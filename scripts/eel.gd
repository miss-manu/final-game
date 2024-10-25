#Called when the node enters the scene tree for the first time.
extends Area2D
#assings a speed of 2 to the eel 
@export var speed = 2
#a signal which can be connected to other parts of the code to make changes when required.
signal eel_killed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#assings the movement to the left side (left means x axis value gets smaller) and gives the momement the speed which we prevoisuly assinged with a variable. 	
		position.x -= speed
#if the hook enters this area 2d(the eel) the copy that has been instantiated will disspeaer 		
func _on_area_entered(area):
	if area is hook:
		queue_free()
#the signal assinged earlier in the script is executed 	
		eel_killed.emit()
