#Called when the node enters the scene tree for the first time.
extends Node2D
#when the start button is pressed the scene will change to the maon gameplay scene 
func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
#when the quit button is pressed the game will close 
func _on_end_pressed():
	get_tree().quit()
#fwhen the fishlist button is pressed the fihslist will open up. 
func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/list.tscn")
