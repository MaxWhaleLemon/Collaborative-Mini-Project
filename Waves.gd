class_name Waves
extends Script

var easy_difficulty = false
var medium_difficulty = false
var hard_difficulty = false
var var_factor = 0
var start_wave_number = 1
var enemy_count = (wave_number * var_factor).floor()
var enemies_killed = 0
var wave_number = 1
func advance_wave():
	return wave_number + 1

func difficulty_level():
	if easy_difficulty == true:
		var_factor = 0.75
		start_wave_number = 1
	elif  medium_difficulty ==true:
		var_factor = 1
		start_wave_number = 3
	elif hard_difficulty ==true:
		var_factor = 1.5
		start_wave_number = 5

