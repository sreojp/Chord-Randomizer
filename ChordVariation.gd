extends HSlider


func _ready():
	connect("drag_ended", on_drag_ended)


func on_drag_ended(changed : bool) -> void:
	var new_variation = value
	Events.emit_signal("variation_changed", new_variation)
