extends CanvasLayer

var num_seconds := 0

func _ready() -> void:
	Autoload.score_updated.connect(update_text)

func update_text():
	print("Update text")
	$VBoxContainer/ScoreLabel.set_text("Score: " + str(Autoload.score))

func _on_timer_timeout() -> void:
	num_seconds += 1
	$VBoxContainer/TimeLabel.set_text("Time: %d" % num_seconds)
