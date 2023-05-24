extends Node

func _on_upgrade_button_pressed():
	GlobalScript.MaxHealth = GlobalScript.MaxHealth + 3
	GlobalScript.HealthRegen = GlobalScript.HealthRegen + 2
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 4
	get_tree().change_scene_to_file("res://scene_handler.tscn")
