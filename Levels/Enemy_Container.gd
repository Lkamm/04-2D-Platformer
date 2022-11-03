extends Node2D


onready var Bat = load("res://Enemy/Bat.tscn")
onready var Bush = load("res://Enemy/Bush.tscn")
func _physics_process(_delta):
	if not has_node("Bat"):
		var bat = Bat.instance()
		add_child(bat)
		bat.name = 'Bat' 
		
func _ready():
	pass # Replace with function body.




func _on_Timer_timeout():
	var bush = Bush.instance()
	add_child(bush)
	bush.name = 'Bush'
