class_name Grid
extends Node2D

# Size in rows and columns
@export var size := Vector2(15, 15)
# tile size
@export var tile_size := Vector2(32, 32)

#half of tile, helps calculate center of grid
var half_tile_size = tile_size / 2

#returns tile's center in pixels
#places enemies/towers and moves them through cells
func calculate_map_pos(grid_position: Vector2) -> Vector2:
	return grid_position * tile_size + half_tile_size

#returns coords of cell on the grid given a position on the map
#complementary of calc map pos function
#does placement, call calc map pos, and snaps them
func calculate_grid_coords(map_position: Vector2) -> Vector2:
	return (map_position / tile_size).floor()

#returns true if coords are in grid
#makes it so things CANNOT LEAVE
func is_within_bounds(tile_coordinates: Vector2) -> bool:
	var out := tile_coordinates.x >=0 and tile_coordinates.x < size.x
	return out and tile_coordinates.y >= 0 and tile_coordinates.y < size.y

#makes grid pos fit in bounds
#limits vectors length
func clamp(grid_position: Vector2) -> Vector2:
	var out := grid_position
	out.x = clamp(out.x, 0, size.x - 1.0)
	out.y = clamp(out.y, 0, size.y - 1.0)
	return out

#given vector2coords, calculates and returns corresponding int indect
#converts 2d coords into 1d array
#good for A* and performance
func as_index(tile: Vector2) -> int:
	return int(tile.x + size.x * tile.y)

