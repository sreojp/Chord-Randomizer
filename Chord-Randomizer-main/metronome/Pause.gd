extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", on_button_pressed)


func on_button_pressed() -> void:
	Events.emit_signal("pause_pressed")
