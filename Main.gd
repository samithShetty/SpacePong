extends Node3D

@export var ball: Ball


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()

func _on_score(player_id: int) -> void:
	Global.scores[player_id] += 1
	print(Global.scores)
	get_tree().reload_current_scene()
