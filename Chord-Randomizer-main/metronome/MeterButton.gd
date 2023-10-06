extends OptionButton


func _ready():
	connect("item_selected", on_item_selected)


func on_item_selected(selection : int) -> void:
	var selection_number = get_item_id(selection)
	Events.emit_signal("meter_changed", selection_number)
