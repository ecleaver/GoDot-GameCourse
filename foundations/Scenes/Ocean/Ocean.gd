extends Node2D

@onready var plane: AnimatedSprite2D = %PlaneAnimated2d
@onready var hilcopper: AnimatedSprite2D = $HilcopperAnimated2d
@onready var eatingsound: AudioStreamPlayer = $Eatingsound
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
	if (plane.global_position.x > 30 and plane.global_position.x < 1120 and plane.global_position.y > 30 and plane.global_position.y < 620):
		plane.move_local_x(-100 * delta, false)
	elif plane.global_position.x <= 40 :
		plane.global_position.x += 120 * delta
		plane.rotate(180 * delta)
	elif plane.global_position.x >= 1100:
		plane.global_position.x -= 120 * delta
		plane.rotate(180 * delta)
	elif plane.global_position.y <= 30:
		plane.global_position.y += 120 * delta
		plane.rotate(180 * delta)
	elif plane.global_position.y >= 600:
		plane.global_position.y -= 120 * delta
		plane.rotate(180 * delta)
		
	
	#Delta needs to be outside of the fuctnion and passed in
	
	angle += speed * get_process_delta_time()
	createCircle(hilcopper, radius, angle, pos_x, pos_y)
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-1.5 * delta)
	elif Input.is_action_pressed("ui_right"):
		plane.rotate(1.5 * delta)
		
	if Input.is_action_just_pressed("ui_accept"):
		print("space") 
		#eatingsound.play()
		plane.global_position = Vector2(pos_x, pos_y)
	
	pass
