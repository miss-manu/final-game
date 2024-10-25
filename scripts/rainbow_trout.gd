# Called when the node enters the scene tree for the first time
extends Area2D
#assings a speed of 1 to the rainbow trout 
@export var speed = 1
#a signal is assinged to the rainbrow trout function which can later be called. 
signal rainbow_killed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#assings the speed variable to the movement of the fish ensuring it remians consistent with every passing frame 	
		position.x -= speed		
#detects if the area entered by the hook is the rianbow trout and if it is the rainbow torut scene instantiated will disspaear. 	
func _on_area_entered(area):
	if area is hook:
		queue_free()
#the function defned at the top is executed. 		
		rainbow_killed.emit()
