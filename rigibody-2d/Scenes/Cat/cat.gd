class_name Cat

extends RigidBody2D
@onready var debugging_label: Label = $"Debugging Label"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	debugging_label.text = Test.test_phyiscs(get_contact_count(), freeze, sleeping)
	pass
