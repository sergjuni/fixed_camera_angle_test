extends Area3D

var trigger = false

func enter_trigger(body):
	if body.name == "CharacterBody3D":
		trigger = true
	

func exit_trigger(body):
	if body.name == "CharacterBody3D":
		trigger = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if trigger && get_parent().current != true:
		get_parent().current = true
