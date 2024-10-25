#Called when the node enters the scene tree for the first time.
extends Area2D
#sets a speed of 3.7 to the snapper fish in the form of a variable 
@export var speed = 3.7
#creats a signal called snapper killed which can then be called
signal snapper_killed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#assings the speed set as a variable to the movement of the fish and ensures it stays constant 
		position.x -= speed
#if the area entered by the hook is the snapper the scene of this instantiated in the main game will disspear
func _on_area_entered(area):
	if area is hook:
		queue_free()
#executes the snapper killed function which we defined at the top of the script 		
		snapper_killed.emit()
