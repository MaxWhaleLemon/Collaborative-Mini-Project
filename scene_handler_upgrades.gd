extends Node

var rand_upgrade = 0
var upgradeArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]
var button1 = upgradeArray[0]
var button2 = upgradeArray[1]
var button3 = upgradeArray[2]
var button4 = upgradeArray[3]

func _ready():
	#var rand_upgrade = randi() % 18
	
	
	
	print("upgradeArray c", upgradeArray)
	randomizeArrayOrder()
	
	#_upgrade_button()
	print("buttons:")
	print(button1)
	print(button2)
	print(button3)
	print(button4)
	
func randomizeArrayOrder():
	print("upgradeArray a", upgradeArray)
	upgradeArray.shuffle()
	print("upgradeArray b", upgradeArray)
	print(upgradeArray)
	
	button1 = upgradeArray[0]
	button2 = upgradeArray[1]
	button3 = upgradeArray[2]
	button4 = upgradeArray[3]




















func _upgrade_button():	
	if rand_upgrade == 0:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("MAX HEALTH UP")
	elif rand_upgrade == 1:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("HEALTH REGEN UP")
	elif rand_upgrade == 2:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER DAMAGE UP")
	elif rand_upgrade == 3:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME DAMAGE UP")
	elif rand_upgrade == 4:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK DAMAGE UP")
	elif rand_upgrade == 5:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER AMMO UP")
	elif rand_upgrade == 6:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME AMMO UP")	
	elif rand_upgrade == 7:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK AMMO UP")
	elif rand_upgrade == 8:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER SPEED UP")
	elif rand_upgrade == 9:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME SPEED UP")
	elif rand_upgrade == 10:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK SPEED UP")
	elif rand_upgrade == 11:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER REGEN UP")
	elif rand_upgrade == 12:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME REGEN UP")
	elif rand_upgrade == 13:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK REGEN UP")
	elif rand_upgrade == 14:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("SNIPER RANGE UP")
	elif rand_upgrade == 15:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("FLAME RANGE UP")
	elif rand_upgrade == 16:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK RANGE UP")
	elif rand_upgrade == 17:
		$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("TACK SPEED")










	$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton2
	$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton3
	$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton4


func _process(delta):
	pass
