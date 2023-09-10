extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("value_changed", on_value_changed)


func on_value_changed(tempo : float) -> void:
	Events.emit_signal("tempo_changed", tempo)
