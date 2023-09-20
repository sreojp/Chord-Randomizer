extends GridContainer

@onready var color_rect_8 := $ColorRect8

# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().process_frame
	if color_rect_8.is_inside_tree():
		print_position()


func print_position() -> void:
	print(color_rect_8.position)
	print(color_rect_8.global_position)
