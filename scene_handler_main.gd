extends Node


# Called when the node enters the scene tree for the first time.
func _ready(): 
	get_node("MainMenu/Margins/VbuxContainer/PlayButton").connect("pressed",on_play_pressed)
	get_node("MainMenu/Margins/VbuxContainer/QuitButton").connect("pressed",on_quit_pressed)



func on_play_pressed():
	get_tree().change_scene("res://scene_handler.tscn")
	
	
func on_quit_pressed():
	get_tree().quit()
