extends Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("timeout", on_timer_timeout)


func on_timer_timeout() -> void:
	Events.emit_signal("timer_timed_out")
