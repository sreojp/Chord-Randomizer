extends OptionButton


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("item_selected", on_item_selected)

func on_item_selected(selection : int) -> void:
	var selection_number = get_item_id(selection)
	Events.emit_signal("denom_changed", selection_number)
