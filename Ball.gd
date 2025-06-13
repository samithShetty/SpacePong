extends RigidBody3D

func bounce():
	print("bounce")
	linear_velocity *= -1

func _on_body_entered(body: Node3D) -> void:
	#if body is Paddle:
		bounce()
	

func _on_area_entered(area: Area3D) -> void:
	print("Score")
