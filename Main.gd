extends Node3D


var scores: Array[int] = [0,0]

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()
		
func _on_score(player_id: int) -> void:
	scores[player_id] += 1
	print(scores)
