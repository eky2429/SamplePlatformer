extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	print("You reached the flag!")
	self.get_tree().change_scene_to_file("res://Scenes/win_scene.tscn")
