extends PathFollow2D

var speed = 150

var enemyDamage = 3
var enemyHealth = 30

func _physics_process(_delta):
	move(_delta)
	
func move(_delta):
	progress += 1
	#progress_ratio = randf()
	#set_process(get_process_delta_time() + speed * _delta)
