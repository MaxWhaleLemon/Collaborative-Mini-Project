extends PathFollow2D

var speed = 150
var hp  = 100

@onready var health_bar = get_node("HealthRotation/HealthBar")
@onready var health_rotation = get_node("HealthRotation")

func _ready():
	health_bar.max_value = hp 
	health_bar.value = hp
	health_rotation.rotation = 3.14

func _physics_process(_delta):
	move(_delta)
	
func move(_delta):
	progress += 1
	var enemy_rotation = (global_rotation)
	health_rotation.set_rotation(-enemy_rotation)
func on_hit(damage):
	hp -= damage
	health_bar.value = hp
	if hp <= 0:
		on_destroy()

func on_destroy():
	self.queue_free()


