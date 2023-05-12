extends Sprite2D
var enemy = true
var enemy_array = []
var health = GlobalScript.CurrentHealth

func select_enemy():
	var enemy_progress_array = []
	for i in enemy_array:
		enemy_progress_array.append(i.progress)
	var max_progress = enemy_progress_array.max()
	var enemy_index = enemy_progress_array.find(max_progress)
	enemy = enemy_array[enemy_index]

func _on_area_2d_body_entered(body):
	enemy_array.append(body.get_parent())
	health = health - 1
	GlobalScript.CurrentHealth = health
	print(health)
