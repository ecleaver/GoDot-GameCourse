class_name Cat

extends RigidBody2D

var _start: Vector2 = Vector2.ZERO
var _drag_start: Vector2 = Vector2.ZERO
var _is_dragging: bool = false
@onready var debugging_label: Label = %"Debugging Label"
@onready var arrow_sprite: Sprite2D = %ArrowSprite


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	arrow_sprite.hide()
	_start = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	debugging_label.text = Test.test_phyiscs(get_contact_count(), freeze, sleeping) 
	debugging_label.text += Test.test_dragging(_is_dragging, _drag_start.x, _drag_start.y)
	pass

func start_dragging() -> void:
	arrow_sprite.show()
	_is_dragging = true
	_drag_start = get_global_mouse_position()
	
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("drag"):
		Test.testing("drag")
		input_event.disconnect(_on_input_event)
		start_dragging()
		Test.testing("drag disconnect")
	pass # Replace with function body.
