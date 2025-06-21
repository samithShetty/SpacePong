extends Node3D

@export var ball: Ball

func _ready() -> void:
	reset_field(1)
	update_score_text()
	


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()

func _on_score(player_id: int) -> void:
	Global.scores[player_id] += 1
	update_score_text()
	reset_field(player_id)
	
func reset_field(player_id):
	ball.position = Vector3.ZERO
	ball.linear_velocity = Vector3(0,0,10 if player_id == 1 else -10)
	ball.spin = Vector3.ZERO
func update_score_text() -> void:
	$UI/P1Score.text = str(Global.scores[0])
	$UI/P2Score.text = str(Global.scores[1])
