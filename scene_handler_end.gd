extends Node


# Called when the node enters the scene tree for the first time.
func _ready(): 

	get_node("GAME_OVER/Margins/VbuxContainer/MenuButton").connect("pressed",on_menu_pressed)
	$GAME_OVER/Margins/VbuxContainer/HBoxContainer/PlayerScore.text = str(GlobalScript.Score)

func _physics_process(delta):
	get_node("GAME_OVER/Margins/VbuxContainer/MenuButton").connect("pressed",on_menu_pressed)


func on_menu_pressed():
	get_tree().change_scene_to_file("res://scene_handler_main.tscn")
