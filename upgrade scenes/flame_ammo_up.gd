extends Node

func _on_upgrade_button_pressed():
	GlobalScript.FlameMaxAMMO = GlobalScript.FlameMaxAMMO * 1.50
	GlobalScript.FlameMaxAMMO = GlobalScript.FlameMaxAMMO * 1.50
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 10
	get_tree().change_scene_to_file("res://scene_handler.tscn")
