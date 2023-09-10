extends Node2D

@onready var animation_player := $AnimationPlayer
@onready var mute := preload("res://chordscreen/mute.png")
@onready var open := preload("res://chordscreen/open.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func fade_in() -> void:
	animation_player.play("fade_in")


func fade_out() -> void:
	animation_player.play("fade_out")


func make_mute() -> void:
	$Sprite2D.set_texture(mute)


func make_open() -> void:
	$Sprite2D.set_texture(open)
