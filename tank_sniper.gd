extends Node2D


func _physics_process(delta):
	turn()
	if ready:
		fire()
	

func turn():
	var enemies = get_tree().get_nodes_in_group("enemy")
	if len(enemies) > 0:
		var first = enemies[0]
		get_node("Turret").look_at(first.global_position)
		if ready:
			fire()
func fire():
	pass

func _ready():
	pass
