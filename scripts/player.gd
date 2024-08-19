extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_right") and position.x <1015:
		position.x += 7
	if Input.is_action_pressed("player_l") and position.x >120:
		position.x -= 7
		
		
	

