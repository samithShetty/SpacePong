class_name Paddle extends CharacterBody3D

@export var move_speed: float = 5.0
@export var boost_speed: float = 10.0

func _process(delta: float) -> void:
	var move_input = get_move_input()
	velocity = Vector3(move_input.x, move_input.y, 0).normalized() * (
		boost_speed if Input.is_action_pressed("boost") else move_speed
	)
	print(velocity, move_and_slide())
	
func get_move_input():
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_up") - Input.get_action_strength("move_down")
	)
	
	
