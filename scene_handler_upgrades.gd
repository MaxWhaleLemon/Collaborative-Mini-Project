extends Node

var rand_upgrade = 0
var upgradeArray = [0, 1, 2, 3, 4, 5, 6, 7, 8]
var upgradeStringArray = ["res://upgrade scenes/flame_ammo_up.tscn", 
"res://upgrade scenes/flame_power_up.tscn", 
"res://upgrade scenes/player_health_up.tscn", 
"res://upgrade scenes/silo_ammo_up.tscn", 
"res://upgrade scenes/silo_power_up.tscn", 
"res://upgrade scenes/sniper_ammo_up.tscn", 
"res://upgrade scenes/sniper_power_up.tscn", 
"res://upgrade scenes/tack_ammo_up.tscn", 
"res://upgrade scenes/tack_power_up.tscn"]

var button1 = upgradeStringArray[0]
var button2 = upgradeStringArray[1]
var button3 = upgradeStringArray[2]

func randomizeArrayOrder():
	print("upgradeArray a", upgradeArray)
	upgradeStringArray.shuffle()
	print("upgradeArray b", upgradeArray)
	print(upgradeArray)
	
	button1 = upgradeStringArray[0]
	button2 = upgradeStringArray[1]
	button3 = upgradeStringArray[2]


func _ready():
	#var rand_upgrade = randi() % 18
	
	
	
	print("upgradeArray c", upgradeArray)
	randomizeArrayOrder()
	
	spawnButton(200, 200, button1)
	spawnButton(200, 300, button2)
	spawnButton(200, 400, button3)
			
#	#_upgrade_button()
#	print("buttons:")
#	print(button1)
#	print(button2)
#	print(button3)
#
#	var upgrade1 = load(button1)
#	var upgrade2 = load(button2)
#	var upgrade3 = load(button3)
#
#
#
#	var instance1 = upgrade1.instantiate()
#	get_node("Node2D").add_child(instance1)
#	get_node("Node2D").get_child(0).get_child(0).position.y = 100
#
#
#
#
#	var instance2 = upgrade2.instantiate()
#	get_node("Node2D").add_child(instance2)
#
#
#	var instance3 = upgrade3.instantiate()
#	get_node("Node2D").add_child(instance3)

	

func spawnButton(x: int, y: int, tscnName: String):
	var upgrade = load(tscnName)
	var instance = upgrade.instantiate()
	get_node("Node2D").add_child(instance)
	var numChilds = get_node("Node2D").get_child_count() - 1
	get_node("Node2D").get_child(numChilds).get_child(0).position.x = x
	get_node("Node2D").get_child(numChilds).get_child(0).position.y = y


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









