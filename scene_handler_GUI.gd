extends Node

var random_enemy = 0
# Wave Generation
func _ready():
	pass





func _process(delta):
	$HBoxContainer/InfoBarRight/VBoxContainer/ProgressBar.value = GlobalScript.CurrentHealth
	$HBoxContainer/InfoBarRight/VBoxContainer/HealthNumber.text = str(GlobalScript.CurrentHealth)
	$HBoxContainer/InfoBarRight/VBoxContainer/ProgressBar.max_value = GlobalScript.MaxHealth
	$HBoxContainer/InfoBarLeft/HBoxContainer/RoundNumber.text = str(GlobalScript.Round)
	$HBoxContainer/InfoBarLeft/BoxContainer/HBoxContainer/PlayerScore.text = str(GlobalScript.Score)
	$HBoxContainer/InfoBarLeft/BoxContainer/HBoxContainer2/EnemyCount.text = str(GlobalScript.WaveCounter)
	
