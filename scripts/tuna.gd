extends Area2D

@export var speed = 2
signal tuna_killed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= speed  
	
func _on_area_entered(area):
	if area is hook:
		queue_free()
		tuna_killed.emit()
