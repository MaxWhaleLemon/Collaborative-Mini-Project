extends Node

var map_node
var current_wave = 0
var enemies_in_wave = 0
var wave_data = []

func _physics_process(delta):
	if GlobalScript.WaveCounter <= 0:
		get_tree().change_scene_to_file("res://scene_handler_upgrades.tscn")
		GlobalScript.CurrentHealth = GlobalScript.CurrentHealth + GlobalScript.HealthRegen


func _ready():
		while GlobalScript.Difficulty >= 0:
			var random_enemy = randi() % 3
			GlobalScript.WaveCounter = GlobalScript.WaveCounter + 1
		
			if random_enemy	== 0:
				GlobalScript.NormalEnemy = GlobalScript.NormalEnemy + 1
				GlobalScript.Difficulty = GlobalScript.Difficulty - 2
			
			elif random_enemy == 1:
				GlobalScript.StrongEnemy = GlobalScript.StrongEnemy + 1
				GlobalScript.Difficulty = GlobalScript.Difficulty - 4
			
			elif random_enemy == 2:
				GlobalScript.FastEnemy = GlobalScript.FastEnemy + 1
				GlobalScript.Difficulty = GlobalScript.Difficulty - 8
			print(GlobalScript.Difficulty)
		
		
		if GlobalScript.Difficulty <= 0:
			print("Normal Enemies:")
			print(GlobalScript.NormalEnemy)
			print("Fast Enemies:")
			print(GlobalScript.StrongEnemy)
			print("Strong Enemies:")
			print(GlobalScript.FastEnemy)
			print("Total Enemy Count:")
			print(GlobalScript.WaveCounter)
			print("---------")
			
			

			
		map_node = get_node("ObstructionMap")
		start_next_wave()

# Called when the node enters the scene tree for the first time.
func start_next_wave():
	var wave_data = retrieve_wave_data()
	await(get_tree().create_timer(0.2).timeout)
	spawn_enemies(wave_data)




func retrieve_wave_data():
	#var wave_data = [["enemy_test", 0.7]]
	for i in GlobalScript.NormalEnemy:
		wave_data.append(["enemy_test"])
	
	for i in GlobalScript.StrongEnemy:
		wave_data.append(["enemy_test_strong"])
		
	for i in GlobalScript.FastEnemy:
		wave_data.append(["enemy_test"])
	
	
	
	current_wave +- 1
	enemies_in_wave = wave_data.size()
	return wave_data

func spawn_enemies(wave_data):
	for i in wave_data:
		var new_enemy = load("res://Enemies/" + i[0] + ".tscn").instantiate()
		map_node.get_node("Path").add_child(new_enemy, true)
		await(get_tree().create_timer(0.2).timeout)
