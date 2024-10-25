#Called when the node enters the scene tree for the first time.
extends Area2D
#sets the speed of the tuna fish as 3 in the form of a variable 
@export var speed = 3
#assings a signal to the script which can later be called. 
signal tuna_killed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#assings the speed of 3 to the fish ensuring it stats constant with every frame	
	position.x -= speed  
#detects that the area entered by the hook is the tuna and if it is the tuna scene instantiated will disspear	
func _on_area_entered(area):
	if area is hook:
		queue_free()
#the previous function which has been defined is executed 		
		tuna_killed.emit()
