class_name Paddle extends CharacterBody3D

@export var move_speed: float = 5.0
@export var boost_speed: float = 10.0
var move_input: Vector2 = Vector2(0,0)

func _process(delta: float) -> void:
	get_move_input()
	velocity.x = move_input.x
	velocity.y = move_input.y
	print(velocity, move_and_slide())
	
func get_move_input():
	move_input = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_up") - Input.get_action_strength("move_down")
	) * (boost_speed if Input.is_action_pressed("boost") else move_speed)
	
	
