extends Grid

var enemy = true
var enemy_array = []
var built = true
var readyBullet = true
var type = "Revolver"
var remaining_bullets = 100
var max_bullets = 100
var category
var bullet_scene = preload("res://revolverbullet.tscn")
@export var fire_type = 2


func _physics_process(_delta):
	if  enemy_array.size() !=0 and built:
		select_enemy()
		turn()
		if readyBullet:
			fire()
	else:
		enemy = null
		
	$AmmoBar.value = remaining_bullets
	$AmmoBar.max_value = max_bullets
func select_enemy():
	var enemy_progress_array = []
	for i in enemy_array:
		if i == null:
			enemy_progress_array.append(0)
		else:
			enemy_progress_array.append(i.progress)
	var max_progress = enemy_progress_array.max()
	var enemy_index = enemy_progress_array.find(max_progress)
	enemy = enemy_array[enemy_index]


func turn():
	if enemy == null:
		pass
	else:
		get_node("Turret").look_at(enemy.global_position)


func fire():
	if enemy == null:
		return
	else:
		if remaining_bullets > 0:
			category == "Spray"
			readyBullet = false
			if fire_type == 1:
				var bullet = bullet_scene.instantiate()
				bullet.direction = $Flame.global_position - global_position
				bullet.global_position = $Flame.global_position
				get_tree().get_root().add_child(bullet)
			if fire_type == 2:
				var bullet = bullet_scene.instantiate()
				bullet.direction = $Turret/Flame.global_position - global_position
				bullet.global_position = $Turret/Flame.global_position
				bullet.global_rotation = $Turret/Flame.global_rotation
				get_tree().get_root().add_child(bullet)
				
				var bullet2 = bullet_scene.instantiate()
				bullet2.direction = $Turret/Flame2.global_position - global_position
				bullet2.global_position = $Turret/Flame2.global_position
				bullet2.global_rotation = $Turret/Flame2.global_rotation
				get_tree().get_root().add_child(bullet2)
				
				var bullet3 = bullet_scene.instantiate()
				bullet3.direction = $Turret/Flame3.global_position - global_position
				bullet3.global_position = $Turret/Flame3.global_position
				bullet3.global_rotation = $Turret/Flame3.global_rotation
				get_tree().get_root().add_child(bullet3)
				
			remaining_bullets = remaining_bullets - 1
			await get_tree().create_timer(GameData.tower_data[type]["rof"]).timeout
			readyBullet = true

func _ready():
	pass

func _on_range_body_entered(body):
	enemy_array.append(body.get_parent())


func _on_range_body_exited(body):
	enemy_array.erase(body.get_parent())
