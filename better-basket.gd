extends Area2D

var score = 0
var score_label

func _ready():
	score_label = get_node("/root/Node2D/ScoreLabel")

func _process(delta):
	
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= 5
	elif Input.is_key_pressed(KEY_RIGHT):
		position.x += 5

func _on_body_entered(body: Node2D) -> void:
	print("You're touching me!!!!!!")
	score = score + 1 # score += 1
	score_label.text = str(score)
