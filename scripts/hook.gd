extends Area2D

class_name hook  


func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("hook_left") and position.x <1080:
		position.x += 7
	if Input.is_action_pressed("hook_right") and position.x >183:
		position.x -= 7
	if Input.is_action_pressed("hook_down") and position.y <630:
		position.y += 7 
	if Input.is_action_pressed("hook_up") and position.y >329:
		position.y -= 7 	



func _on_area_entered(area):
	if area is dolphin:
		get_tree().change_scene_to_file("res://scenes/end_page.tscn")
	
	
	

