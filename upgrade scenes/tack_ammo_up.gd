extends Node

func _on_upgrade_button_pressed():
	GlobalScript.TackMaxAMMO = GlobalScript.TackMaxAMMO + 4
	GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen
	GlobalScript.Difficulty = GlobalScript.Difficulty + 4
	GlobalScript.TackCurrentAMMO = GlobalScript.TackMaxAMMO
	GlobalScript.SniperCurrentAMMO = GlobalScript.SniperMaxAMMO
	GlobalScript.SiloCurrentAMMO = GlobalScript.SiloMaxAMMO
	GlobalScript.FlameCurrentAMMO = GlobalScript.FlameMaxAMMO
	get_tree().change_scene_to_file("res://scene_handler.tscn")
