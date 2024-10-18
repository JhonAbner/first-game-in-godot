extends Node

var score = 0
@onready var score_label: Label = $Score_Label

func add_points():
	score+=1
	score_label.text = "Congratulations!! " + str(score) + " collected coins! \n(Press ESC to close)"
