#Called when the node enters the scene tree for the first time
extends Area2D
#assings the cup a speed of 3 in a variable 
@export var speed = 3
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#sets the speed of the hnager movement to the speed assinged prevoisly in the varaible 	
		position.x -= speed
#detects if the area that the hook enters is the cup and if it is the cup scene that is instantiated dispaears 
func _on_area_entered(area):
	if area is hook:
#makes the cup scene dissapear 	
		queue_free()
