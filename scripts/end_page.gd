#Called when the node enters the scene tree for the first time
extends Node2D
#when the quit button is pressed the game screen will close 
func _on_quitgame_pressed():
	get_tree().quit()
#when the start button is pressed the scene will to the main menu screen.   
func _on_restart_pressed():
	get_tree().change_scene_to_file("res://scenes/mian_menu.tscn")
