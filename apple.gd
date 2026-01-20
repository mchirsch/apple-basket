extends Sprite2D

var y_pos = 0
var x_pos = 0

func _ready():
	pass
	
func _process(delta):
	
	y_pos = y_pos + 4
	position = Vector2(x_pos, y_pos)
	
	if y_pos > 600:
		y_pos = 0
		x_pos = randi_range(0, 1000)
	
