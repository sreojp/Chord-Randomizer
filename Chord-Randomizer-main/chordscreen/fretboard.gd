extends Control

@onready var pre_dot := preload("res://chordscreen/dot.tscn")
@onready var pre_line := preload("res://chordscreen/line.tscn")
@onready var neck := $BarContainer/HBoxContainer2/Bars/Neck

@onready var e_mute := $BarContainer/TopSpace/HBoxContainer/E/E
@onready var a_mute := $BarContainer/TopSpace/HBoxContainer/A/A
@onready var d_mute := $BarContainer/TopSpace/HBoxContainer/D/D
@onready var g_mute := $BarContainer/TopSpace/HBoxContainer/G/G
@onready var b_mute := $BarContainer/TopSpace/HBoxContainer/B/B
@onready var high_e_mute := $BarContainer/TopSpace/HBoxContainer/HighE/HighE

@onready var e1 := $StringContainer/HBoxContainer/LowEString/one/one
@onready var e0 := $StringContainer/HBoxContainer/LowEString/zero/zero
@onready var e2 := $StringContainer/HBoxContainer/LowEString/two/two
@onready var e3 := $StringContainer/HBoxContainer/LowEString/three/three
@onready var e4 := $StringContainer/HBoxContainer/LowEString/four/four
@onready var e5 := $StringContainer/HBoxContainer/LowEString/five/five

@onready var a1 := $StringContainer/HBoxContainer/AString/one/one
@onready var a0 := $StringContainer/HBoxContainer/AString/zero/zero
@onready var a2 := $StringContainer/HBoxContainer/AString/two/two
@onready var a3 := $StringContainer/HBoxContainer/AString/three/three
@onready var a4 := $StringContainer/HBoxContainer/AString/four/four
@onready var a5 := $StringContainer/HBoxContainer/AString/five/five

@onready var d1 := $StringContainer/HBoxContainer/DString/one/one
@onready var d0 := $StringContainer/HBoxContainer/DString/zero/zero
@onready var d2 := $StringContainer/HBoxContainer/DString/two/two
@onready var d3 := $StringContainer/HBoxContainer/DString/three/three
@onready var d4 := $StringContainer/HBoxContainer/DString/four/four
@onready var d5 := $StringContainer/HBoxContainer/DString/five/five

@onready var g1 := $StringContainer/HBoxContainer/GString/one/one
@onready var g0 := $StringContainer/HBoxContainer/GString/zero/zero
@onready var g2 := $StringContainer/HBoxContainer/GString/two/two
@onready var g3 := $StringContainer/HBoxContainer/GString/three/three
@onready var g4 := $StringContainer/HBoxContainer/GString/four/four
@onready var g5 := $StringContainer/HBoxContainer/GString/five/five

@onready var b1 := $StringContainer/HBoxContainer/BString/one/one
@onready var b0 := $StringContainer/HBoxContainer/BString/zero/zero
@onready var b2 := $StringContainer/HBoxContainer/BString/two/two
@onready var b3 := $StringContainer/HBoxContainer/BString/three/three
@onready var b4 := $StringContainer/HBoxContainer/BString/four/four
@onready var b5 := $StringContainer/HBoxContainer/BString/five/five

@onready var he1 := $StringContainer/HBoxContainer/HighEString/one/one
@onready var he0 := $StringContainer/HBoxContainer/HighEString/zero/zero
@onready var he2 := $StringContainer/HBoxContainer/HighEString/two/two
@onready var he3 := $StringContainer/HBoxContainer/HighEString/three/three
@onready var he4 := $StringContainer/HBoxContainer/HighEString/four/four
@onready var he5 := $StringContainer/HBoxContainer/HighEString/five/five

@onready var mute_spots = [e_mute, a_mute, d_mute, g_mute, b_mute, high_e_mute]
@onready var e_string = [e0, e1, e2, e3, e4, e5]
@onready var a_string = [a0, a1, a2, a3, a4, a5]
@onready var d_string = [d0, d1, d2, d3, d4, d5]
@onready var g_string = [g0, g1, g2, g3, g4, g5]
@onready var b_string = [b0, b1, b2, b3, b4, b5]
@onready var high_e_string = [he0, he1, he2, he3, he4, he5]

@onready var all_strings = [e_string, a_string, d_string, g_string, b_string, high_e_string]

var window_size_x
var window_size_y
var my_size_x
var my_size_y
var dot_scaling_factor


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().process_frame
	window_size_x = get_tree().get_root().size.x
	window_size_y = get_tree().get_root().size.y
	my_size_x = get_global_rect().size.x
	my_size_y = get_global_rect().size.y
	dot_scaling_factor = (my_size_x + my_size_y) / (window_size_x + window_size_y)


func build_chord(fingerings: Dictionary) -> void:
	for string_index in fingerings["frets"].keys():
		var fret_value = fingerings["frets"][string_index]
		if fret_value is int:
			var string = all_strings[string_index]  # Guitar string here, not a data type
			create_dot(string[fret_value], "dot")
		elif fret_value is String:
			if fret_value == "open":
				create_dot(mute_spots[string_index], "open")
			elif fret_value == "muted":
				create_dot(mute_spots[string_index], "mute")
		elif fret_value is Array:
			var bar_fret_value = fingerings["frets"][string_index][1]
			var start_string = all_strings[string_index]
			var end_string = all_strings[fingerings["frets"].find_key("endbar")]
			create_bar(start_string[bar_fret_value], end_string[bar_fret_value])
		else:
			pass



func create_bar(start_fret : Control, end_fret : Control) -> void:
	var dot_one = pre_dot.instantiate()
	start_fret.add_child(dot_one)
	dot_one.scale.x = dot_scaling_factor
	dot_one.scale.y = dot_scaling_factor
	dot_one.add_to_group("fingerings")

	var dot_two = pre_dot.instantiate()
	end_fret.add_child(dot_two)
	dot_two.scale.x = dot_scaling_factor
	dot_two.scale.y = dot_scaling_factor
	dot_two.add_to_group("fingerings")
	
	var line = pre_line.instantiate()
	
	add_child(line)
	line.add_point(dot_one.global_position)
	line.add_point(dot_two.global_position)
	line.width = dot_one.sprite.get_rect().size.y * dot_scaling_factor
	line.add_to_group("fingerings")

	dot_one.fade_in()
	dot_two.fade_in()
	line.fade_in()


func create_dot(fret : Control, symbol : String) -> void:
	var new_dot = pre_dot.instantiate()
	fret.add_child(new_dot)
	new_dot.scale.x = dot_scaling_factor
	new_dot.scale.y = dot_scaling_factor
	new_dot.add_to_group("fingerings")
	if symbol == "mute":
		new_dot.make_mute()
	elif symbol == "open":
		new_dot.make_open()
	new_dot.fade_in()


func clear() -> void:
	for child in get_tree().get_nodes_in_group("fingerings"):
		child.queue_free()
