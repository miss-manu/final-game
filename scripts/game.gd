extends Node2D

# in charge of keeping score and spawning the enemies 

var score = 0 

@onready var fish_tuna = preload("res://prefabs/tuna.tscn")
@onready var fish_Btrout = preload("res://prefabs/brown_trout.tscn")
@onready var platsic_cup = preload("res://prefabs/cup.tscn")
@onready var green_eel = preload("res://prefabs/eel.tscn")
@onready var hammer_shark = preload("res://prefabs/shark.tscn")
@onready var plastic_hanger = preload("res://prefabs/hanger.tscn")
@onready var manta_ray = preload("res://prefabs/manta.tscn")
@onready var green_perch = preload("res://prefabs/perch.tscn")
@onready var rainbow_trout = preload("res://prefabs/rainbow_trout.tscn")
@onready var snapper_fish = preload("res://prefabs/snapper.tscn")

@onready var dolphin_fish = preload ("res://prefabs/dolphin.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	_update_ui()
	
func _process(delta):
	pass 	

func _on_timer_timeout():
	
	var tuna = fish_tuna.instantiate()
	var brown = fish_Btrout.instantiate()  
	var cup = platsic_cup.instantiate()  
	var eel = green_eel.instantiate()  
	var shark = hammer_shark.instantiate()  
	var hanger = plastic_hanger.instantiate()
	var manta = manta_ray.instantiate()
	var perch = green_perch.instantiate()
	var rainbow = rainbow_trout.instantiate()
	var snapper = snapper_fish.instantiate()
	

	tuna.tuna_killed.connect(_on_goodfish_killed)
	brown.brown_killed.connect(_on_goodfish_killed)
	eel.eel_killed.connect(_on_badfish_killed)
	shark.shark_killed.connect(_on_badfish_killed)
	manta.manta_killed.connect(_on_badfish_killed)
	perch.perch_killed.connect(_on_goodfish_killed)
	rainbow.rainbow_killed.connect(_on_goodfish_killed)
	snapper.snapper_killed.connect(_on_goodfish_killed)
	
	#range
	var random_1 = randi_range(350,610)
	var random_2 = randi_range(350,610)
	var random_3 = randi_range(350,610)
	var random_4 = randi_range(350,610)
	var random_5 = randi_range(350,610)
	var random_6 = randi_range(350,610)
	var random_7 = randi_range(350,610)
	var random_8 = randi_range(350,610)
	var random_9 = randi_range(350,610)
	var random_10 = randi_range(350,610)
	
	 #positions 
	tuna.position = Vector2(1200,random_1)
	brown.position = Vector2(1200,random_2)
	cup.position = Vector2 (1200,random_3)
	eel.position = Vector2 (1200,random_4)  
	shark.position = Vector2 (1200,random_5)
	hanger.position = Vector2 (1200,random_6)  
	manta.position = Vector2 (1200,random_7)
	perch.position = Vector2(1200,random_8)
	rainbow.position = Vector2(1200,random_9)
	snapper.position = Vector2(1200,random_10)
	#connect scores   
	
	#add child 
	add_child(tuna)
	add_child(brown)
	add_child(cup)
	add_child(eel)
	add_child(shark)
	add_child(hanger)
	add_child(manta)
	add_child(perch)
	add_child(rainbow)
	add_child(snapper)



func _on_dtimer_timeout():
	var dolphin = dolphin_fish.instantiate()
	#postion 
	var random = randi_range(350,610)
	dolphin.position =  Vector2(1200,random)
	add_child(dolphin)


func _update_ui():
	$gameui/score_label.text = "Score: " + str(score)

func _on_goodfish_killed():
	score += 10
	_update_ui()

func _on_badfish_killed():
	score += -2
	_update_ui()	


