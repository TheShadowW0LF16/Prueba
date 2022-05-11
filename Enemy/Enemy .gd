extends KinematicBody2D

var motion = Vector2()
var speed = 100
var MAX_SPEED = 400
var velocity = Vector2.ZERO

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var Player = get_parent().get_node("Player")
	
	global_position += (Player.position - position) * speed * delta
	look_at(Player.position)

	move_and_collide(motion)


func _on_Area2D_body_entered(body):
	if "Bullet" in body.name:
		queue_free()
