extends HSlider


func _ready():
	connect("drag_ended", on_drag_ended)




#mutations:
#0% - plays the same chord over and over
#X% - plays the same chord progression over and over
#X% - plays two chord progressions over and over
#X% - plays different chord progressions in the same key
#X% - plays random chord-progression-esque sequences e.g. motion by 2nd, 3rd, 4th, and so on
#X% - introduces a chance for modal borrowing for chords in the key
#X% - chance for chords in near keys (a couple fifths away)
#X% - total randomness

func on_drag_ended(changed : bool) -> void:
	var new_mutation = value
	Events.emit_signal("mutation_changed", new_mutation)
