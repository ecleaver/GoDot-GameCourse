extends Node2D

@onready var plane: AnimatedSprite2D = %PlaneAnimated2d
@onready var hilcopper: AnimatedSprite2D = $HilcopperAnimated2d
@onready var eatingsound: AudioStreamPlayer = $Eatingsound
@onready var radius : float = 100
@onready var angle : float = 0
@onready var speed : float = .6
@onready var pos_x : float = 500
@onready var pos_y : float = 300
@onready var positions : Array = []
@onready var move : float = 0
const MAX_X : int = 1100
const MIN_XY : int = 30
const MAX_Y = 600
@onready var rotate : float = 0
@onready var plane_rotate : float = 0

func createCircle (sprit : AnimatedSprite2D, radius, angle, pos_x, pos_y):
	var positions = [radius * cos(angle) + pos_x, radius * sin(angle) + pos_y]
	sprit.position.x = positions[0]
	sprit.position.y = positions[1]
	
func movePlane(sprit : AnimatedSprite2D, move, min_xy, max_x, max_y, rotate):
	if (sprit.global_position.x > min_xy and sprit.global_position.x < max_x and sprit.global_position.y > min_xy and sprit.global_position.y < max_y):
		#setting move_local_x to false removes the gobal scaling affects 
		sprit.move_local_x(-move)
	elif plane.global_position.x <= min_xy :
		sprit.global_position.x += move
	elif plane.global_position.x >= max_x:
		sprit.global_position.x -= move
	elif plane.global_position.y <= min_xy:
		sprit.global_position.y += move
	elif plane.global_position.y >= max_y:
		sprit.global_position.y -= move
		
	if (sprit.global_position.x <= min_xy or sprit.global_position.x >= max_x or sprit.global_position.y <= min_xy or sprit.global_position.y >= max_y):
		sprit.rotate(rotate)

func planeInputs(sprit : AnimatedSprite2D, plane_rotate):
	if Input.is_action_pressed("ui_left"):
		sprit.rotate(-plane_rotate)
	elif Input.is_action_pressed("ui_right"):
		sprit.rotate(plane_rotate)
		
	if Input.is_action_just_pressed("ui_accept"):
		print("space") 
		eatingsound.play()
		#plane.global_position = Vector2(pos_x, pos_y)

func moveToMouse(sprit1 : AnimatedSprite2D, move, speed = 1):
	sprit1.look_at(get_global_mouse_position())
	sprit1.move_local_x(-(speed * move))

func moveTo(sprit1 : AnimatedSprite2D, sprit2 : AnimatedSprite2D, move, speed):
	#var direction: Vector2 = sprit1.position.direction_to(sprit2.position)
	sprit1.look_at(sprit2.position)
	sprit1.position += sprit1.transform.x * speed * move
	#sprit1.translate(direction * speed * move)
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	move = 100 * delta
	rotate = 180 * delta
	plane_rotate = 1.5 * delta
	#code used to move the plane with the mouse
	moveToMouse(plane, move, speed)
	
	
	#moveTo(plane, hilcopper, move, speed)
	#hilcopper.position.y += 20 * delta
	#gets the planes current potions 
	
	#put the code for moving the plane into a 
	movePlane(plane, move, MIN_XY, MAX_X, MAX_Y, rotate)
	#Delta needs to be outside of the fuctnion and passed in
	
	angle += speed * get_process_delta_time()
	# a function to make a object move in a circle
	createCircle(hilcopper, radius, angle, pos_x, pos_y)
	
	#a object for getting inputs 
	#planeInputs(plane, plane_rotate)
		
	pass
