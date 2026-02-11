extends Node


var score : int = 0

var Score : int:
	get():
		return score
	set(value):
		print("Score set")
		score = value
		score_updated.emit()

signal score_updated
