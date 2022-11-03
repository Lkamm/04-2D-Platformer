extends Node

var rTime = 1.5
onready var SM = get_parent()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func reload():
	if Input.is_action_just_pressed("reload") or $Shooting.ammo == 0:
		$Shooting.ammo = 6
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
