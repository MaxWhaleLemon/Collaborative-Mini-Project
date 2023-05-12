extends Grid

var enemy = true
var enemy_array = []
var built = true
var readyBullet = true
var type = "TankSniper"
var remaining_bullets = 2


func _physics_process(_delta):
	if  enemy_array.size() !=0 and built:
		select_enemy()
		turn()
		if readyBullet:
			fire()
	else:
		enemy = null

func select_enemy():
	var enemy_progress_array = []
	for i in enemy_array:
		enemy_progress_array.append(i.progress)
	var max_progress = enemy_progress_array.max()
	var enemy_index = enemy_progress_array.find(max_progress)
	enemy = enemy_array[enemy_index]


func turn():
	get_node("Turret").look_at(enemy.global_position)

func fire():
	if remaining_bullets > 0:
		readyBullet = false
		remaining_bullets = remaining_bullets - 1
		print(remaining_bullets)
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
