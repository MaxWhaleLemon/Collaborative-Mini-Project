extends Node

var SAVE_FILE_PATH = "user://savedata.save"

var MaxHealth = 10
var CurrentHealth = 10
var HealthRegen = 1

var SniperDMG = 40
var FlameDMG = 3
var TackDMG = 10
var SiloDMG = 100

var SniperMaxAMMO = 6
var FlameMaxAMMO = 65
var TackMaxAMMO = 8
var SiloMaxAMMO = 16

var SniperCurrentAMMO = 6
var FlameCurrentAMMO = 65
var TackCurrentAMMO = 8
var SiloCurrentAMMO = 16

var SniperSPEED = 2
var FlameSPEED = 0.1
var TackSPEED = 1
var SiloSPEED = 0.25

var SniperREGEN = 1
var FlameREGEN = 1
var TackREGEN = 1
var SiloREGEN = 1

var SniperRANGE = 2050
var FlameRANGE = 100
var TackRANGE = 800
var SiloRANGE = 1600

var Round = 0
var Score = 0
var Highscore = 0


var leaderboardbutton = false


#tom's code was broken without these variables (???)
var SniperMaxAMOUNT = 1 
var SniperCurrentAMOUNT = 0
var SiloMaxAMOUNT = 1 
var SiloCurrentAMOUNT = 0
var FlameMaxAMOUNT = 1 
var FlameCurrentAMOUNT = 0
var TackMaxAMOUNT = 1 
var TackCurrentAMOUNT = 0




#these are for the wave generation
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
		get_tree().change_scene_to_file("res://scene_handler_end.tscn")

	if CurrentHealth > MaxHealth:
		CurrentHealth = MaxHealth

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
