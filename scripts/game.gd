#Called when the node enters the scene tree for the first time.
extends Node2D
#variable assinged to the scores, inital, good, and bad.  
var score = 0
var gscore = 5
var bscore = -2
#These lines preload a fihs scene and assign it to the named variables 
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

#When this function is called it will execute the above lines and make whatever updates necessary. 
func _ready():
	_update_ui()
#when the timer ends (every 2 seconds) all the following inputs will occur. 

func _on_timer_timeout():
#The scenes we assinged to variables are now spanned, it creates a now instance of the scene 
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
	
	#Connects the indivudal score variables to the intended fish, half get +5(good fish) and hald get -2(bad fish) 
	tuna.tuna_killed.connect(_on_goodfish_killed)
	brown.brown_killed.connect(_on_goodfish_killed)
	eel.eel_killed.connect(_on_badfish_killed)
	shark.shark_killed.connect(_on_badfish_killed)	
	manta.manta_killed.connect(_on_badfish_killed)
	perch.perch_killed.connect(_on_goodfish_killed)
	rainbow.rainbow_killed.connect(_on_goodfish_killed)
	snapper.snapper_killed.connect(_on_goodfish_killed)
	
	#This is the  range between which each indivudal fish can spawn. 
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
	
	 #This code postions the fish according to the random range so they can spawn up anywhere between the given parameters. 
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
	 
	#This code adds the above variables as a child therefor they are added to the scene tree, incoprporates into the scene strcuture 
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
#when the dolphin timer meets it set duration a copy of the dolphin scene will be created on this scene. 
func _on_dtimer_timeout():
	var dolphin = dolphin_fish.instantiate()
	#this line sets the position parameters of the dolphin ensuring it is anywhere within the sea 
	var random = randi_range(350,610)
	#assings the positions to the dolphin scene which is going to spawn 
	dolphin.position =  Vector2(1200,random)
	#adds the dolphin variable as a child so it can be connected to the scene tree of the main game 
	add_child(dolphin)
#this function updates the ui(in this case the score label) to the new score everytime the score changes(a fish is fished)	
func _update_ui():
	$gameui/score_label.text = "Score: " + str(score)
#This function is attached to the fish that are encouraged to fish (hence the +5 points) and is called whenever one of this fish is fished	
func _on_goodfish_killed():
	score += +5
	_update_ui()
#This function is attached to the fish that are endangered (hence the -2) and is called eveyrtime those fish are fished 	
func _on_badfish_killed():
	score += -2 
	_update_ui()	

