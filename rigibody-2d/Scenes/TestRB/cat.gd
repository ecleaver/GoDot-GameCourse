extends RigidBody2D
@onready var label: Label = $Label

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action("ui_down"):
		freeze = false
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = "Freeze:%s\nContactCount:%d\nSleeping%s" %[
		freeze, 
		get_contact_count(),
		sleeping
	]
	pass
