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


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseMotion and event.button_mask == 1:
		position = get_global_mouse_position()
		printt(position)
	pass # Replace with function body.
