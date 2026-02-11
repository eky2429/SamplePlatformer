extends Area2D


func _on_body_entered(_body: Node2D) -> void:
	Autoload.score += 1
	self.queue_free()
