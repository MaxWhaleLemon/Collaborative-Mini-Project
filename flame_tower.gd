extends Grid

var enemy = true
var enemy_array = []
var built = true
var readyBullet = true
var type = "FlameTower"
var remaining_bullets = 10000
var category


func _physics_process(_delta):
	#print(enemy_array.size() )
	if  enemy_array.size() !=0 and built:
		select_enemy()
		turn()
		if readyBullet:
			fire()
	else:
		enemy = null
	if enemy == null:
		$Turret/Flame/ActualFlame.hide()
	else:
		$Turret/Flame/ActualFlame.show()
		
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

func fire_gun():
	get_node("AnimationPlayer").play("Fire")

func fire():
	if enemy == null:
		return
	else:
		if remaining_bullets > 0:
			category == "Flame"
			fire_gun()
			readyBullet = false
			remaining_bullets = remaining_bullets - 1
			enemy.on_hit(GameData.tower_data[type]["damage"])
			await get_tree().create_timer(GameData.tower_data[type]["rof"]).timeout
			readyBullet = true
		elif remaining_bullets <= 0:
			pass

func _ready():
	pass
	#if built:
	#	print(self.get_node("Range/CollisionShape2D").get_shape().radius)
	#	self.get_node("Range/CollisionShape2D").get_shape().radius = 0.5 * GameData.tower_data[self.get_name()]["range"]
	#	
	#	print(self.get_node("Range/CollisionShape2D").get_shape().radius)

func _on_range_body_entered(body):
	enemy_array.append(body.get_parent())


func _on_range_body_exited(body):
	enemy_array.erase(body.get_parent())
