extends Node

var SAVE_FILE_PATH = "user://savedata.save"

var MaxHealth = 100
var CurrentHealth = 100
var HealthRegen = 0

var SniperDMG = 20
var FlameDMG = 1
var TackDMG = 4

var SniperMaxAMMO = 5
var FlameMaxAMMO = 50
var TackMaxAMMO = 25

var SniperCurrentAMMO = 5
var FlameCurrentAMMO = 50
var TackCurrentAMMO = 25

var SniperSPEED = 1
var FlameSPEED = 10
var TackSPEED = 5

var SniperREGEN = 1
var FlameREGEN = 1
var TackREGEN = 1

var SniperRANGE = 1
var FlameRANGE = 1
var TackRANGE = 1



var Round = 1
var Score = 0
var Highscore = 0


#The Algorithm Spot

var Difficulty = 10
var NormalEnemy = 0
var StrongEnemy = 0
var FastEnemy = 0
var WaveCounter = 0





func _ready():		
	
	save_highscore()

func _process(_delta):
	
	if Score > Highscore:
		Highscore = Score

	if CurrentHealth <= 0:
		get_tree().change_scene_to_file("res://scene_handler_main.tscn")



func save_highscore():
	print('saving...')
	var file = FileAccess.open(SAVE_FILE_PATH, FileAccess.WRITE)
	print(file.get_path_absolute())
	file.store_var(Highscore)
	print('saved!')
	# var text = file.get_as.text()
	#save_data.store_var(Highscore)
	#file.store_string("hello")
	#file.close()
	
func load_highscore():
	if FileAccess.file_exists(SAVE_FILE_PATH):
		print("highscore file found")
		var file = FileAccess.open(SAVE_FILE_PATH, FileAccess.READ)
		Highscore = file.get_var()
	else:
		print("highscore file not found")
		Highscore = 0
	
	#var save_data = File.new()
	#if save_data.file_exists(SAVE_FILE_PATH):
	#	save_data.open(SAVE_FILE_PATH, File.READ)
