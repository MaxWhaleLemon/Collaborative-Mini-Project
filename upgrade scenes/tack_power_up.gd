extends Node

func _on_upgrade_button_pressed():
	GlobalScript.TackDMG = GlobalScript.TackDMG * 1.1
	GlobalScript.TackSPEED = GlobalScript.TackSPEED  * 0.3
	GlobalScript.TackRANGE = GlobalScript.TackRANGE + 200
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 4
	get_tree().change_scene_to_file("res://scene_handler.tscn")
