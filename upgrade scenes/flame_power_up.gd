extends Node

func _on_upgrade_button_pressed():
	GlobalScript.FlameDMG = GlobalScript.FlameDMG + 3
	GlobalScript.FlameSPEED = GlobalScript.FlameSPEED * 0.5
	GlobalScript.FlameRANGE = GlobalScript.FlameRANGE + 50
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 4
	get_tree().change_scene_to_file("res://scene_handler.tscn")
