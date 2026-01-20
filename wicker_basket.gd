extends Sprite2D

var x_pos = 500
var apple_sprite

func _ready():
	# "/root/Node2D/Apple"
	apple_sprite = get_node("../Apple")

func _process(delta):
	
	if Input.is_key_pressed(KEY_LEFT):
		x_pos = x_pos - 1
		
	position = Vector2(x_pos, 500)
	
	# is there a colission?????
	if apple_sprite.position.y > 500:
		if apple_sprite.position.x > position.x:
			print("You got it!!!!!")
	
