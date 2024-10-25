# Called when the node enters the scene tree for the first time
extends Area2D
#This is used to define a class so this scene can be insantiated anywhere else on other scripts. 
class_name hook  
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if "A" or the left arrow key is pressed the hook will move left as long x axis is bigger than 900 at a speed of 7 
	if Input.is_action_pressed("hook_left") and position.x <1500:
		position.x += 7
#If "D" or right arrow key is pressed hook will move left till x until x axis is smaller than 40 at a speef of 7		
	if Input.is_action_pressed("hook_right") and position.x >186:
		position.x -= 7
#if "S" key or down arrow is pressed hook will move down as long as y is bigger than 630 at a speed of 7  		
	if Input.is_action_pressed("hook_down") and position.y <630:
		position.y += 7 
#if "D" or up arrow key is pressed the hook will move up as long as y is bigger than 329		
	if Input.is_action_pressed("hook_up") and position.y >329:
		position.y -= 7
		 	
#if the hook enters any area and the area is dolphin, the scene will change.  
func _on_area_entered(area):
	if area is dolphin:
#scene will change to the end page scene to the that the player has died and trasnported to the end page. 		
		get_tree().change_scene_to_file("res://scenes/end_page.tscn")
	
	
	

