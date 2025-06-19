class_name ControlMap extends Resource

@export_category("Dev Controls")
@export var dev_move_up: Key
@export var dev_move_left: Key
@export var dev_move_down: Key
@export var dev_move_right: Key
@export var dev_boost: Key

@export_category("Table Controls")
@export var move_up: Key
@export var move_left: Key
@export var move_down: Key
@export var move_right: Key
@export var boost: Key


func get_move_input():
	if Global.isOnTable:
		return Vector2(
			int(Input.is_key_pressed(move_right)) - int(Input.is_key_pressed(move_left)),
			int(Input.is_key_pressed(move_up)) - int(Input.is_key_pressed(move_down))
		)
	else:
		return Vector2(
			int(Input.is_key_pressed(dev_move_right)) - int(Input.is_key_pressed(dev_move_left)),
			int(Input.is_key_pressed(dev_move_up)) - int(Input.is_key_pressed(dev_move_down))
		)
		
func is_boosting():
	return Input.is_key_pressed(boost) if Global.isOnTable else Input.is_key_pressed(dev_boost)
