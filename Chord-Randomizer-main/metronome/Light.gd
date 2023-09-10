extends ColorRect

@onready var light := $PointLight2D
@onready var light_container := $CenterContainer

const bright_pink := Color8(255, 105, 205, 255)
const dark_pink := Color8(118, 0, 89, 255)

# Called when the node enters the scene tree for the first time.
func _ready():
	light.position.x = size.x / 2
	light.position.y = size.y / 2
	light.scale.x = scale.x
	light.scale.y = scale.y
	turn_off()


func turn_on() -> void:
	set_color(bright_pink)
	light.visible = true


func turn_off() -> void:
	set_color(dark_pink)
	light.visible = false
