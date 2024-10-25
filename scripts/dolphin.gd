#Called when the node enters the scene tree for the first time
extends Area2D
#by giving a class name of dolphin the sofwatre recognises this script as dolphin. 
class_name dolphin 
#assings a speed of 2 to the dolphin as a variable 
@export var speed = 2
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#assings the speed set in the variable to the motion of the dolphin	in every frame which is 2
	position.x -= speed
