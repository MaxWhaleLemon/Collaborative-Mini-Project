extends Node

var rand_upgrade = 0
var upgradeArray = [0, 1, 2, 3, 4, 5, 6, 7, 8]
var button1 = upgradeArray[0]
var button2 = upgradeArray[1]
var button3 = upgradeArray[2]

func _ready():
	#var rand_upgrade = randi() % 18
	
	
	
	print("upgradeArray c", upgradeArray)
	randomizeArrayOrder()
	
	#_upgrade_button()
	print("buttons:")
	print(button1)
	print(button2)
	print(button3)

func randomizeArrayOrder():
	print("upgradeArray a", upgradeArray)
	upgradeArray.shuffle()
	print("upgradeArray b", upgradeArray)
	print(upgradeArray)
	
	button1 = upgradeArray[0]
	button2 = upgradeArray[1]
	button3 = upgradeArray[2]




#func buttonSpawn():
#	load("res://Enemies/" + i[0] + ".tscn").instantiate()
















func _upgrade_button():	
	if rand_upgrade == 0:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("PLAYER HEALTH UP")
	elif rand_upgrade == 1:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER POWER UP")
	elif rand_upgrade == 2:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME POWER UP")
	elif rand_upgrade == 3:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK POWER UP")
	elif rand_upgrade == 4:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER AMMO UP")
	elif rand_upgrade == 5:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME AMMO UP")	
	elif rand_upgrade == 6:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK AMMO UP")
	elif rand_upgrade == 7:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SILO POWER UP")	
	elif rand_upgrade == 8:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SILO AMMO UP")










func _process(delta):
	pass
