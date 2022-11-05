extends Node

var ammo = 6
onready var Bullet = load("res://Bullet.tscn")
onready var SM = get_parent()
#var mousePos = get_viewport().get_mouse_position()
onready var ray = $RayCast2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.

#func shoot():
	#if Input.is_action_pressed("shoot"):
		#SM.set_state("Shooting")
		#var bullet = Bullet.instance()
		#var d = global_position.angle_to_point(mousePos) - PI/2
		#bullet.rotation = d
		#bullet.global_position = global_position + mousePos.rotated(d)
		#ray.cast_to = ray_to_local(mousePos)
		#add_child(Bullet)
		#mmo = ammo - 1
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
