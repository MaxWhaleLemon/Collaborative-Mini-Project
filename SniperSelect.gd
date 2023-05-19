extends Button

@onready var tank = preload("res://tank_sniper.tscn")
var sniperCount = GlobalScript.SniperCurrentAMOUNT
var currTile
var sniperMax = GlobalScript.SniperMaxAMOUNT
#var mouse_tile = Vector2i(local_to_map(get_global_mouse_position()))
#var tile_center_pos = map_to_world(tile_pos) + cell_size / 2
var SniperActive = false
func _input(event):
	var Map = get_node("/root/Scene Handler GUI/HBoxContainer/MarginContainer/Map")
	
	var tanknode = Map.get_node("Tanks")
	var ObsMapNode = Map.get_node("ObstructionMap")
#	print(is_hovered())
	#print(tanknode)
	#print(tanknode.map_to_local())
	if sniperCount <= sniperMax - 1:
		var tempTank = tank.instantiate()
		if event is InputEventMouseButton and event.button_mask == 1 and is_hovered():
			SniperActive = true
			tempTank.set_name("TankSniper")
			add_child(tempTank)
			tempTank.global_position = event.global_position
			tempTank.process_mode = Node.PROCESS_MODE_DISABLED
			
		elif event is InputEventMouseMotion and event.button_mask == 1:
#			print("clicking and dragging")
			#button left down and dragging
			if get_child_count() >= 1:
#				print("and the get child count > 1")
				get_child(0).global_position = event.global_position
#				#Check if on Dirt Tile.
				var tile = ObsMapNode.local_to_map(get_global_mouse_position())
				var TileNewpos = ObsMapNode.map_to_local(tile)
				get_child(0).global_position = TileNewpos
#				currTile = ObsMapNode.get_cell_atlas_coords(0, tile, false)
#				print(currTile)
#				var targets = get_child(0).get_node("tankDetector").get_overlapping_bodies()
#				if (currTile == Vector2i(4,5)):
#					if (targets.size() > 1):
#						get_child(0).get_node("Area").modulate = Color(255,255,255)
#					else:
#						get_child(0).get_node("Area").modulate = Color(0,255,0)
#				else:
#					get_child(0).get_node("Area").modulate = Color(255,255,255)
		elif event is InputEventMouseButton and event.button_mask == 0 and SniperActive == true:
			#button left release
			GlobalScript.SniperCurrentAMOUNT = sniperCount + 1
			if event.global_position.x <= 200:
				if get_child_count() > 1:
					get_child(0).queue_free()
				print("a")
			else:
				#check for valid tile:
				if get_child_count() >= 1:
					get_child(0).queue_free()
					print("b")
				print(currTile)
				#if currTile == Vector2i(4,5):
				#var targets = get_child(0).get_node("tankDetector").get_overlapping_bodies()
				var path = tanknode
				#if (targets.size() < 3):
				path.add_child(tempTank)
				tempTank.get_node("Range").hide()
				var tile = ObsMapNode.local_to_map(get_global_mouse_position())
				var TileNewpos = ObsMapNode.map_to_local(tile)
				print("tile new pos", TileNewpos)
				get_child(0).position = TileNewpos
				
				print("c")
				SniperActive = false
		else:
			if get_child_count() >= 1:
				get_child(0).queue_free()


func _on_button_up():
	pass # Replace with function body.
