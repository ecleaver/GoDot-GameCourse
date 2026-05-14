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
@onready var move = 0
@onready var max_x = 1100
@onready var min_xy = 30
@onready var max_y = 600
@onready var rotate : float = 0
@onready var plane_rotate = 0

func createCircle (sprit : AnimatedSprite2D, radius, angle, pos_x, pos_y):
	var positions = [radius * cos(angle) + pos_x, radius * sin(angle) + pos_y]
	sprit.position.x = positions[0]
	sprit.position.y = positions[1]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#code is commited out for moving plane with gobal poition 
	
	move = 100 * delta
	rotate = 180 * delta
	plane_rotate = 1.5 * delta
	if (plane.global_position.x > min_xy and plane.global_position.x < max_x and plane.global_position.y > min_xy and plane.global_position.y < max_y):
		#setting move_local_x to false removes the gobal scaling affects 
		plane.move_local_x(-100 * delta)
	elif plane.global_position.x <= min_xy :
		plane.global_position.x += move
	elif plane.global_position.x >= max_x:
		plane.global_position.x -= move
	elif plane.global_position.y <= min_xy:
		plane.global_position.y += move
	elif plane.global_position.y >= max_y:
		plane.global_position.y -= move

	if (plane.global_position.x <= min_xy or plane.global_position.x >= max_x or plane.global_position.y <= min_xy or plane.global_position.y >= max_y):
		plane.rotate(rotate)
	
	
	#Delta needs to be outside of the fuctnion and passed in
	
	angle += speed * get_process_delta_time()
	createCircle(hilcopper, radius, angle, pos_x, pos_y)
	
	if Input.is_action_pressed("ui_left"):
		plane.rotate(-plane_rotate)
	elif Input.is_action_pressed("ui_right"):
		plane.rotate(plane_rotate)
		
	if Input.is_action_just_pressed("ui_accept"):
		print("space") 
		#eatingsound.play()
		plane.global_position = Vector2(pos_x, pos_y)
	
	pass
