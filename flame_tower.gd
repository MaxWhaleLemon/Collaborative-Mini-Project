extends Node2D

func _physics_process(_delta):
	turn()
	
func turn():
	pass
	#var hi = get_tree().get_nodes_in_group("enemy")
	#var first = hi[0]
	#print(first)
	
	#var enemy_position = get_groups(enemy)
	#get_node("Turret").look_at(first.global_position)
