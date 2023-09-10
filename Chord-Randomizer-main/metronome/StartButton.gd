extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("button_down", on_button_down)


func on_button_down() -> void:
	Events.emit_signal("start_pressed")
