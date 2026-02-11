extends CanvasLayer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Label.set_text("Score: " + str(Autoload.score))
