# Called when the node enters the scene tree for the first time
extends Area2D
# the fish is assinged a speed of 3
@export var speed = 3
#signal is assinged to the function which can later be called or connected to something else in the script#
signal perch_killed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
# sets the speed of the fish to the assinged variable and ensures it remians constant 	
	position.x -= speed
#if the area entered by the hook is the perch the perch scene instatinated will dissapear 
func _on_area_entered(area):
	if area is hook:
		queue_free()
# the signal assinged prevoisly will be executed.
		perch_killed.emit()	
