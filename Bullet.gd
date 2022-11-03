extends KinematicBody2D

var speed = 500.0
var damage = 1
var velocity = Vector2.ZERO

func _ready():
	velocity = Vector2(0, -speed).rotated(rotation)

func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.UP)
	position.x = wrapf(position.x, 0, Global.VP.x)
	position.y = wrapf(position.y, 0, Global.VP.y)
	
func _on_Timer_timeout():
	queue_free()

	

func _on_Area2D2_body_entered(body):
	queue_free()
