# Called when the node enters the scene tree for the first time.
extends Node2D
#when the texture button is pressed the back arrow will lead the player back to the main menu 
func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/mian_menu.tscn")

