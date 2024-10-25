# Called when the node enters the scene tree for the first time
extends Area2D
#assings the fish a speed of 2.5
@export var speed = 2.5
#signal is assinged to thw functii0n which can later be called or connected to something else in the script
signal manta_killed
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#assings the movement to the left(left means lower x axis value) and assings the speed of the manta to the variable 
	position.x -= speed
#if the area entered by the hook is this area 2d the scene instantiated on the main gamepage will dissapear 
func _on_area_entered(area):
	if area is hook:
		queue_free()
#the singal assinged earlier in the script is executed 	
		manta_killed.emit()

