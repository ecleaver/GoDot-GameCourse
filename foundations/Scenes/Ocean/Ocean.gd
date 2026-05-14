extends Node2D

@onready var plane: AnimatedSprite2D = $PlaneAnimated2d
@onready var hilcopper: AnimatedSprite2D = $HilcopperAnimated2d
@onready var radius = 100
@onready var angle = 0
@onready var speed = 0.5
@onready var pos_x = 500
@onready var pos_y = 300
@onready var positions = []

func createCircle (sprit : AnimatedSprite2D, radius, angle, pos_x, pos_y):
	var positions = [radius * cos(angle) + pos_x, radius * sin(angle) + pos_y]
	sprit.position.x = positions[0]
	sprit.position.y = positions[1]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (plane.position.x > 30 and plane.position.x < 1120 and plane.position.y > 30 and plane.position.y < 620):
		plane.move_local_x(-100 * delta)
	elif plane.position.x <= 40 :
		plane.position.x += 120 * delta
		plane.rotate(180 * delta)
	elif plane.position.x >= 1100:
		plane.position.x -= 120 * delta
		plane.rotate(180 * delta)
	elif plane.position.y <= 30:
		plane.position.y += 120 * delta
		plane.rotate(180 * delta)
	elif plane.position.y >= 600:
		plane.position.y -= 120 * delta
		plane.rotate(180 * delta)
		
	"
		Delta needs to be outside ofthe fuctnion and passed in
	"
	angle += speed * get_process_delta_time()
	createCircle(hilcopper, radius, angle, pos_x, pos_y)
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-1.5 * delta)
	elif Input.is_action_pressed("ui_right"):
		plane.rotate(1.5 * delta)

	pass
