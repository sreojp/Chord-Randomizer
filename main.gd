extends Control

@export var chord_info := preload("res://chordscreen/chord_info.tres")
@onready var light_container = $MarginContainer/HBoxContainer/Metronome/VBoxContainer/Lights/LightContainer
@onready var new_light := preload("res://metronome/light.tscn")
@onready var timer := $Timer
@onready var tempo_button := $MarginContainer/HBoxContainer/Metronome/VBoxContainer/TimeSignature/VBoxContainer/HBoxContainer2/TempoButton
@onready var click_one := $ClickOne
@onready var click_two := $ClickTwo
@onready var chord_name := $MarginContainer/HBoxContainer/Fingering/VBoxContainer/CenterContainer/ChordName
@onready var diagram := $MarginContainer/HBoxContainer/Fingering/VBoxContainer/Diagram
@onready var start_panel := $MarginContainer/HBoxContainer/Metronome/VBoxContainer/StartPanel
@onready var pre_pause_and_reset := preload("res://metronome/pause_and_reset.tscn")
@onready var pre_start_button := preload("res://metronome/start_button.tscn")
@onready var mutation_description := $MarginContainer/HBoxContainer/ChordInfo/VBoxContainer/MutationDescription
@onready var variation_description := $MarginContainer/HBoxContainer/ChordInfo/VBoxContainer/VariationDescription
@onready var fretboard := $MarginContainer/HBoxContainer/Fingering/VBoxContainer/Fretboard

var new_denom := 4.0
var new_meter := 4.0
var new_tempo := 120.0
var nodes_to_light : Array 
var light_counter := 0
var current_light_index := -1
var mutation_value := 0
var variation_value := 0
var max_fret := 0
var first_time := true
var speed : float 
var random_chord
var fixed_chord
var random_chord_progression
var fixed_chord_progression
var index := 0
#list of stuff to do: Brian's suggestions, mutations all worked out, all chords put in


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().process_frame
	randomize()
	reroll()
	
	Events.connect("denom_changed", on_denom_changed)
	Events.connect("meter_changed", on_meter_changed)
	Events.connect("tempo_changed", on_tempo_changed)
	Events.connect("tempo_button_pressed", on_tempo_button_pressed)
	Events.connect("start_pressed", on_start_pressed)
	Events.connect("timer_timed_out", on_timer_timed_out)
	Events.connect("new_cycle_started", on_new_cycle_started)
	Events.connect("pause_pressed", on_pause_pressed)
	Events.connect("reset_pressed", on_reset_pressed)
	Events.connect("mutation_changed", on_mutation_changed)
	Events.connect("variation_changed", on_variation_changed)
	nodes_to_light = get_tree().get_nodes_in_group("lights")
	

func on_denom_changed(denom : int) -> void:
	new_denom = denom

#mutations:
# FINISHED 0% - plays the same chord over and over
#X% - plays the same chord progression over and over
#X% - plays two chord progressions over and over
#X% - plays different chord progressions in the same key
#X% - plays random chord-progression-esque sequences e.g. motion by 2nd, 3rd, 4th, and so on
#X% - introduces a chance for modal borrowing for chords in the key
#X% - chance for chords in near keys (a couple fifths away)
#X% - total randomness

func on_new_cycle_started() -> void:
	if mutation_value == 0:
		if first_time:
			first_time = false
			fixed_chord = random_chord
			var chord_to_be_played = chord_info.all_first_position_chords[fixed_chord]
			fretboard.build_chord(chord_to_be_played)
			chord_name.text = chord_to_be_played["name"]
		elif not first_time:
			pass
	elif mutation_value == 1:
		fretboard.clear()
		fixed_chord_progression = chord_info.common_chord_progressions[random_chord_progression]
		print(fixed_chord_progression.size())
		print(index)
		if index < fixed_chord_progression.size():
			fretboard.build_chord(chord_info.c_major_key_root[fixed_chord_progression[index]])
			chord_name.text = chord_info.c_major_key_root[fixed_chord_progression[index]]["name"]
		else:
			index = 0
			fretboard.build_chord(chord_info.c_major_key_root[fixed_chord_progression[index]])
			chord_name.text = chord_info.c_major_key_root[fixed_chord_progression[index]]["name"]
		index += 1


func on_meter_changed(meter : int) -> void:
	for child in light_container.get_children():
		child.queue_free()
		child.remove_from_group("lights")
	new_meter = meter
	for x in meter:
		var light = new_light.instantiate()
		light_container.add_child(light)
		light.add_to_group("lights")
	nodes_to_light = get_tree().get_nodes_in_group("lights")


func on_mutation_changed(new_value) -> void:
	mutation_value = new_value
	if mutation_value == 0:
		mutation_description.set_text("Repeats one randomly-chosen chord")
	elif mutation_value == 1:
		mutation_description.set_text("Repeats one simple chord progression")
	elif mutation_value == 2:
		mutation_description.set_text("Repeats two simplish chord progressions")
	elif mutation_value == 3:
		mutation_description.set_text("Plays random chord progressions in key")
	elif mutation_value == 4:
		mutation_description.set_text("Plays random but logical chord sequences in key")
	elif mutation_value == 5:
		mutation_description.set_text("Chance for modal borrowing")
	elif mutation_value == 6:
		mutation_description.set_text("Chance for more distantly-related chords")
	elif mutation_value == 7:
		mutation_description.set_text("Totally random")


func on_variation_changed(new_value) -> void:
	print(new_value)
	variation_value = new_value
	if variation_value == 0:
		variation_description.set_text("Plays the lowest possible chord variation")
		max_fret = 0
	elif variation_value == 1:
		variation_description.set_text("Chords below the 6th fret")
		max_fret = 6
	elif variation_value == 2:
		variation_description.set_text("Chords below the 10th fret")
		max_fret = 10
	elif variation_value == 3:
		variation_description.set_text("Chords anywhere on the fretboard")
		max_fret = INF


func on_start_pressed() -> void:
	for child in start_panel.get_children():
		child.queue_free()
	
	var new_pause = pre_pause_and_reset.instantiate()
	start_panel.add_child(new_pause)
	
	calculate_speed()
	if timer.is_paused():
		timer.set_paused(false)
	else:
		timer.set_wait_time(speed)
		timer.start()


func on_reset_pressed() -> void:
	timer.stop()
	current_light_index = -1
	chord_name.set_text("")
	first_time = true
	for light in get_tree().get_nodes_in_group("lights"):
		light.turn_off()
	for child in start_panel.get_children():
		child.queue_free()
	fretboard.clear()
	var start_button = pre_start_button.instantiate()
	start_panel.add_child(start_button)
	


func on_pause_pressed() -> void:
	timer.set_paused(true)
	for child in start_panel.get_children():
		child.queue_free()
	var start_button = pre_start_button.instantiate()
	start_panel.add_child(start_button)


func on_timer_timed_out() -> void:
	if current_light_index >= 0:
		nodes_to_light[current_light_index].turn_off()

	current_light_index += 1
	if current_light_index >= nodes_to_light.size():
		current_light_index = 0
		Events.emit_signal("new_cycle_started")

	nodes_to_light[current_light_index].turn_on()
	if current_light_index == 0:
		click_one.play(0.0)
	else:
		click_two.play(0.0)


func on_tempo_changed(tempo : float) -> void:
	tempo_button.text = str(tempo)
	new_tempo = tempo
	calculate_speed()
	timer.set_wait_time(speed)


func on_tempo_button_pressed(amount : int) -> void:
	new_tempo += amount
	tempo_button.text = str(new_tempo)
	calculate_speed()
	timer.set_wait_time(speed)


func calculate_speed() -> void:
	speed = ((4.0 / new_denom) / new_tempo) * 60.0


func choose_chord() -> void:
	pass


func reroll() -> void:
	randomize()
	if variation_value == 0:
		random_chord = randi_range(0, chord_info.all_first_position_chords.size() - 1)
	random_chord_progression = randi_range(0, chord_info.common_chord_progressions.size() - 1)
