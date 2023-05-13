extends Node

var rand_upgrade = 0



func _ready():
	var rand_upgrade = randi() % 18
	
	#randi() % 18
	
	
	func _upgrade():
		if rand_upgrade == 0:
			$Upgrades/MarginContainer/HBoxContainer/VBoxContainer/UPButton1.text = str("MAX HEALTH UP")
			print(rand_upgrade)
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
