extends PathFollow2D

var speed = 150
var hp  = 100
@export var deathParticle : PackedScene

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
	progress += 5
	var enemy_rotation = (global_rotation)
	health_rotation.set_rotation(-enemy_rotation)
func on_hit(damage):
	hp -= damage
	health_bar.value = hp
	if hp <= 0:
		on_destroy()

func on_destroy():
	var _particle = deathParticle.instantiate()
	_particle.global_position = global_position
	_particle.rotation = global_rotation
	_particle.emitting = true
	get_tree().get_root().add_child(_particle)
	self.queue_free()




