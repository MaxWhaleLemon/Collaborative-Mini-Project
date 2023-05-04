extends Node2D

func _physics_process(delta):
	turn()

func turn():
	var hi = get_tree().get_nodes_in_group("enemy")
	var first = hi[0]
	print(first)
	get_node("Turret").look_at(first.global_position)

