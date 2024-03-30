extends CanvasLayer

@onready var score_label = $"Score Label"
@onready var center_container = $CenterContainer
@onready var end_score_label = $"CenterContainer/VBoxContainer/End Score Label"


var score = 0


func _ready():
	score_label.text = str(score)
	center_container.hide()


func _on_tubos_update_score():
	score += 1
	score_label.text = str(score)


func _on_tubos_game_over():
	end_score_label.text = "Score:" + str(score)
	center_container.show()
	score_label.hide()
