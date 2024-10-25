# Called when the node enters the scene tree for the first time.
extends Area2D
#function to make my player move left and right
func _process(delta):
	#if the "D" or right arrow key is pressed (as assinged in input map) the player will move right
	if Input.is_action_pressed("player_right") and position.x <1015:
		position.x += 7
	#if the "A" or left arrow key is pressed (as assinged in input map) the player will move left	
	if Input.is_action_pressed("player_l") and position.x >120:
		position.x -= 7
		
		
	

