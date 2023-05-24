extends Node

func _on_upgrade_button_pressed():
	GlobalScript.SniperDMG = GlobalScript.SniperDMG * 1.5
	GlobalScript.SniperSPEED = GlobalScript.SniperSPEED * 0.5
	GlobalScript.SniperRANGE = GlobalScript.SniperRANGE * 1.5
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 4
	get_tree().change_scene_to_file("res://scene_handler.tscn")
