extends Node

# Called when the node enters the scene tree for the first time.
func _ready(): 
	get_node("Control/VBoxContainer/BackButton").connect("pressed",on_back_pressed)



func on_back_pressed():
	get_tree().change_scene_to_file("res://scene_handler_main.tscn")
	
	

func _physics_process(delta):
#	$Control/VBoxContainer/HighScore.value = GlobalScript.Highscore
	$Control/VBoxContainer/HighScore.text = str(100)
	

