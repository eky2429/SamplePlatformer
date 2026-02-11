extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	print("Coin collected")
	Autoload.Score += 1
	print("")
	self.queue_free()
