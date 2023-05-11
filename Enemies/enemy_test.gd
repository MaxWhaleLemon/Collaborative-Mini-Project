extends PathFollow2D

var speed = 150
var hp  = 30

func _physics_process(_delta):
	move(_delta)
	
func move(_delta):
	progress += 1

func on_hit(damage):
	hp -= damage
	if hp <= 0:
		on_destroy()

func on_destroy():
	self.queue_free()


