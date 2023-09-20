extends Line2D

@onready var animation_player := $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func fade_in() -> void:
	animation_player.play("fade_in")


func fade_out() -> void:
	animation_player.play("fade_out")
