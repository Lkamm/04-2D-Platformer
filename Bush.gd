extends KinematicBody2D

var speed = 300
var burningSpeed = 600
var player = null
onready var ray = $RayCast2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var line_of_sight = false
var points = []
const margin = 1.5
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(3000,50)

func _physics_process(_delta):
	var velocity = Vector2.ZERO
	player = get_node_or_null("/root/Game/Player_Container/Player")
	if player != null:
		ray.cast_to = ray.to_local(player.global_position)
		var c = ray.get_collider()
		line_of_sight = false
		if c and c.name == "Player":
			line_of_sight = true
		points = get_node("/root/Game/Navigation2D").get_simple_path(get_global_position(), player.global_position, true)
		if points.size() > 1:
			var distance = points[1] - get_global_position()
			var direction = distance.normalized()
			if distance.length() > margin or points.size() > 2:
				if line_of_sight:
					velocity = direction*speed
				else:
					velocity = direction*burningSpeed
					$Burning.show()
			else:
				velocity = Vector2(0, 0)
			move_and_slide(velocity, Vector2(0,0))
		update()


func _on_Area2D_body_entered(body):
	if body.name == 'Player':
		body.die()
		queue_free()

