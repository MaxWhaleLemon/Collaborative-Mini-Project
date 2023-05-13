extends Button
@onready var tank = preload("res://tank_sniper.tscn")
var currTile
var SniperActive = false
func _on_gui_input(event):
	var tempTank = tank.instantiate()
	if event is InputEventMouseButton and event.buttom_mask == 1 and SniperActive == false:
		#left click down
		add_child(tempTank)
		tempTank.global_position = event.global_position
		tempTank.process_mode = Node.PROCESS_MODE_DISABLED
	
	elif event is InputEventMouseMotion and event.button_mask == 1:
		#left down drag
		tempTank.global_position = event.global_position
	elif event is InputEventMouseButton and event.button_mask == 0:
		
