class_name pathmaker
extends Node2D

var up = 1
var down =-1
var left =-1
var right =1

var tilemap 

func _ready():
	tilemap = get_node("/root/TileMap/Node2D2")
func _process(delta):
	var mouse :Vector2= get_viewport().get_mouse_position()
	var cell :Vector2i = tilemap.local_to_map(mouse)
	var abc :int = tilemap.get_cellv(cell)
	var new_abc :int = (abc + 1) % 3 # just an example plus 1 modules 3
	tilemap.get_cellv(cell, new_abc)

func set_tileset(TileSet):
	
