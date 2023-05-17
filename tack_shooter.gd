extends Grid

var enemy = true
var enemy_array = []
var built = true
var readyBullet = true
var type = "TackShooter"
var remaining_bullets = 4
var category
var bullet_scene = preload("res://bullet.tscn")


func _physics_process(_delta):
	$Timer.start(1)
	if  enemy_array.size() !=0 and built:
		select_enemy()
		if readyBullet:
			fire()
	else:
		enemy = null

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



func fire():
	if remaining_bullets > 0:
		var bullet = [null, null, null, null, null, null, null, null, null, null]
		var angle = 36
		for i in range(10):
			bullet[i] = bullet_scene.instantiate()
			bullet[i].direction = Vector2.RIGHT.rotated(36 * i)
			bullet[i].global_position = global_position
			get_tree().get_root().add_child(bullet[i])
		category == "Tack"
		readyBullet = false
		remaining_bullets = remaining_bullets - 1
		enemy.on_hit(GameData.tower_data[type]["damage"])
		await get_tree().create_timer(GameData.tower_data[type]["rof"]).timeout
		readyBullet = true
	elif remaining_bullets <= 0:
		pass

func _ready():
	if built:
		self.get_node("Range/CollisionShape2D").get_shape().radius = 0.5 * GameData.tower_data[self.get_name()]["range"]

func _on_range_body_entered(body):
	enemy_array.append(body.get_parent())


func _on_range_body_exited(body):
	enemy_array.erase(body.get_parent())


func _on_timer_timeout():
	fire()
	$Timer.start(1)
