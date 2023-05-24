extends Node

func _on_upgrade_button_pressed():
	GlobalScript.SiloDMG = GlobalScript.SiloDMG + 5
	GlobalScript.SiloSPEED = GlobalScript.SiloSPEED * 0.3
	GlobalScript.SiloRANGE = GlobalScript.SiloRANGE + 400
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 4
	get_tree().change_scene_to_file("res://scene_handler.tscn")
