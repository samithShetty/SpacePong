class_name Paddle extends Area3D

@export var player_id: Global.Player
@export var player_control: ControlMap
@export var move_speed: float = 5.0
@export var boost_speed: float = 10.0
var velocity: Vector3
	

func _process(delta: float) -> void:
	var move_input = player_control.get_move_input()
	velocity = Vector3(move_input.x, move_input.y, 0).normalized() * (
		boost_speed if player_control.is_boosting() else move_speed
	)
	position += velocity*delta

func _on_body_entered(body: Node3D) -> void:
	if body is Ball:
		body.linear_velocity.z *= -1
		body.spin *= 0.9
		body.spin -= self.velocity
