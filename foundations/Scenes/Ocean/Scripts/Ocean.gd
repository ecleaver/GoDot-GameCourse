extends Node2D


@onready var plane: AnimatedSprite2D = %PlaneAnimated2d
@onready var hilcopper: AnimatedSprite2D = $HilcopperAnimated2d
@onready var eatingsound: AudioStreamPlayer = $Eatingsound
var angle : float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var planeMove : Movement = Movement.new(plane)
	var hilcopperMove : Movement = Movement.new(hilcopper)
	angle += hilcopperMove.getSpeed() * delta
	planeMove.getDelta(100 * delta, 180 * delta)	
	
	
	#put the code for moving the plane into a 

	planeMove.moveSprite()
	#Delta needs to be outside of the fuctnion and passed in
	# calls the function in the class movenment to make a circle 
	
	hilcopperMove.setAngle(angle)
	hilcopperMove.createCircle()
	
	
	planeMove.setMouse(get_global_mouse_position())
	# calls a function in the movement class to mouse the plane with the mouse
	planeMove.moveToMouse()
	
	pass
