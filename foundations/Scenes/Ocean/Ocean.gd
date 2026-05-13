extends Node2D

@onready var plane: AnimatedSprite2D = $PlaneAnimated2d
@onready var hilcopper: AnimatedSprite2D = $HilcopperAnimated2d
@onready var radius = 50
@onready var angle = 0
@onready var speed = 0.5
@onready var pos_x = 0
@onready var pos_y = 0
@onready var x = 50
@onready var y = 50
func createCircle(sprite : AnimatedSprite2D, speed, angle, radius, pos_x, pos_y, x, y):
		
	angle += speed * get_process_delta_time()
	pos_x = cos(angle)
	pos_y = sin(angle)
	sprite.position.x = radius * pos_x + x
	sprite.position.y = radius * pos_y + y
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (plane.position.x > 30 and plane.position.x < 1120 and plane.position.y > 30 and plane.position.y < 620):
		plane.move_local_x(-100 * delta)
	elif plane.position.x <= 30 :
		plane.position.x += 120 * delta
		plane.rotate(180 * delta)
	elif plane.position.x >= 1120:
		plane.position.x -= 120 * delta
		plane.rotate(180 * delta)
	elif plane.position.y <= 30:
		plane.position.y += 120 * delta
		plane.rotate(180 * delta)
	elif plane.position.y >= 620:
		plane.position.y -= 120 * delta
		plane.rotate(180 * delta)
		
	"
	 	Trying to replace the logic of the circle with a function.  
	  createCircle(hilcopper, speed, angle, radius, pos_x, pos_y, x, y)
	"
	
	angle += speed * get_process_delta_time()
	pos_x = cos(angle)
	pos_y = sin(angle)
	hilcopper.position.x = radius * pos_x + x
	hilcopper.position.y = radius * pos_y + y
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-1.5 * delta)
	elif Input.is_action_pressed("ui_right"):
		plane.rotate(1.5 * delta)

	pass
