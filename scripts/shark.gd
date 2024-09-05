extends Area2D

var being_dragged = false 
@export var speed = 1
signal shark_killed 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed
	

	
func _on_area_entered(area): 
	if area is hook:
		queue_free()
		shark_killed.emit()
