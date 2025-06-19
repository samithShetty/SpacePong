class_name ScoreZone extends Area3D

@export var player_id: Global.Player
signal score(player_id: Global.Player)

func _on_body_entered(body: Node3D) -> void:
	if body is Ball:
		emit_signal("score", player_id)
		print('score')
