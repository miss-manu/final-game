#Called when the node enters the scene tree for the first time.
extends Area2D
#varaible stating that as a default the shark being fished is false
var being_dragged = false 
#variable that assings the speed a value of 1 
@export var speed = 1
#defines shark killed as a signal which we can then connect to other parts of the code 
signal shark_killed 
#Called every frame. 'delta' is the elapsed time since the previous frame.
#assings the speed to the shark and ensures that it will remian constant with every frame rate 
func _process(delta):
	position.x -= speed	
#if the area of the hook and shark collide the shark scene that has been instatianed will dissapear.	
func _on_area_entered(area): 
	if area is hook:
		queue_free()
#shark killed function will be executed	
		shark_killed.emit()
