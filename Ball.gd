class_name Ball extends RigidBody3D

@export var spin: Vector3


func _physics_process(delta: float) -> void:
	linear_velocity += spin*delta
	
func bounce():
	print("bounce", linear_velocity)

func _on_body_entered(body: Node3D) -> void:
	if body is Paddle:
		bounce()
