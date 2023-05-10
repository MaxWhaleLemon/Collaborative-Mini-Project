extends Node



func _ready():
	pass

func _process(delta):
	$HBoxContainer/InfoBarRight/VBoxContainer/ProgressBar.value = GlobalScript.CurrentHealth
	$HBoxContainer/InfoBarRight/VBoxContainer/HealthNumber.text = str(GlobalScript.CurrentHealth)
	$HBoxContainer/InfoBarRight/VBoxContainer/ProgressBar.max_value = GlobalScript.MaxHealth
	$HBoxContainer/InfoBarLeft/HBoxContainer/RoundNumber.text = str(GlobalScript.Round)
	
	
