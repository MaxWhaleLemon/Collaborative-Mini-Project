extends Node

func _on_upgrade_button_pressed():
	GlobalScript.FlameDMG = GlobalScript.FlameDMG * 1.1
	GlobalScript.FlameSPEED = GlobalScript.FlameSPEED * 1.15
	GlobalScript.FlameRANGE = GlobalScript.FlameRANGE * 1.2
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 10
	get_tree().change_scene_to_file("res://scene_handler.tscn")
