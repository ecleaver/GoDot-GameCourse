extends Node2D

@onready var plane: AnimatedSprite2D = $PlaneAnimated2d
@onready var hilcopper: AnimatedSprite2D = $HilcopperAnimated2d
@onready var plane_direction = "east"
@onready var hilcopper_direction = "south"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (plane_direction == "east"):
		if (plane.position.x <= 1100):
			plane.position.x += 100.0 * delta
		else: 
			plane.flip_h = true
			plane_direction = "west"
	if (plane_direction == "west"):
		if (plane.position.x >=  50):
			plane.position.x -= 100.0 * delta
		else: 
			plane_direction = "east"
			plane.flip_h = false
			
	if (hilcopper_direction == "south"):
		if (hilcopper.position.y <= 600):
			hilcopper.position.y += 50.0 * delta
		else: 
			hilcopper_direction = "north"
	if (hilcopper_direction == "north"):
		if (hilcopper.position.y >=  50):
			hilcopper.position.y -= 50.0 * delta
		else: 
			hilcopper_direction = "south"

	pass
