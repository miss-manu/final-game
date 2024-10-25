#Called when the node enters the scene tree for the first time.
extends Area2D
#assings a speed of 2 to the hanger movement as a variable 
@export var speed = 2
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#sets the hanger movement in the speed initially assinged as a varaible. 	
	position.x -= speed
#if the area entered by the hook is the hanger the hnager scene instantiated in the main gameplay will dissapear 
func _on_area_entered(area):
	if area is hook:
#makes hook scene disspear 		
		queue_free()
		
		
	
	
