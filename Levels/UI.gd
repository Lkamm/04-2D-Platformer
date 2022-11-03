extends Control

func update_score():
	$Score.text = "Score: " + str(Global.score)
	
func _ready():
	update_score()
	update_lives()
	
func update_lives():
	pass
	
func update_ammo():
	pass
