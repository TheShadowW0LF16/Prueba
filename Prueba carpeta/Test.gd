extends Node2D

var direction = Vector2.RIGHT
var speed = 10

func _process(delta):
	position += direction * speed * delta
