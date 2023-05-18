extends Area2D

var direction = Vector2.RIGHT
var speed = 400
var type = "TackShooter"


func _process(delta):
	translate(direction.normalized() * speed * delta)


func _on_body_entered(body):
	print("collision")
	print(body)
	if body.name == "CharacterBody2D":
		print("CharacterBody")
	var enemy = body.get_parent()
	enemy.on_hit(GameData.tower_data[type]["damage"])
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
