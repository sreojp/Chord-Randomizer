extends ColorRect


@onready var animation_player := $AnimationPlayer
# Called when the node enters the scene tree for the first time.
var is_faded_in := true

func _ready():
	pass


func fade_in() -> void:
	if is_faded_in:
		return
	else:
		animation_player.play("fade_in")
		is_faded_in = true
	

func fade_out() -> void:
	if is_faded_in:
		animation_player.play("fade_out")
		is_faded_in = false
	else:
		return
