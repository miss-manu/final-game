#Called when the node enters the scene tree for the first time.
extends Area2D
#assings the speef of the shark a variable of 1.5
@export var speed = 1.5
#a signal which can be connected to other parts of the code to make changes when required. 
signal brown_killed 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#makes the area2d move to the left (left means x axis gets smaller) at the constant speed assinged. 
		position.x -= speed
#if the hoo enters any area and the area is the brown trout the borwn trout that has been instantiated will disspeaer 
func _on_area_entered(area):
	if area is hook:
		queue_free()
	#the signal set before is executed. 	
		brown_killed.emit()

