## A class created to control the movement of a AnimatedSprite2d.  
## Needs to be given an AnimatedSprite2d to work.
extends Node2D
class_name Movement

## needs to be assigned a Animated Sprite 2d
var sprit: AnimatedSprite2D

## needs to be feed the mouses poition 
var getMouse = 0
## 
var radius : float = 100
## angle needs to receive a value * delta
var angle : float 
## used to chnage the planes speed
var speed : float = 40
## update the x position of the circle 
var pos_xCircle : float = 500
## update the y position of the cirle
var pos_yCircle : float = 300

## need to get the move * delta
var move : float = 0


enum ScreenPositions {
	MAX_X = 1100,
	MIN_XY = 30,
	MAX_Y = 600
}
var rotate : float = 0
var sprit_rotate : float = 0

func _init(p_sprit : AnimatedSprite2D) -> void:
	sprit = p_sprit
	pass

func getDelta(p_move : float = 0, p_rotate : float = 0) -> void:
	move = p_move
	rotate = p_rotate
	pass

func createCircle () -> void:
	
	var positions : Array[float] = [radius * cos(angle) + pos_xCircle, radius * sin(angle) + pos_yCircle]
	sprit.position.x = positions[0]
	sprit.position.y = positions[1]

	
	
func moveSprite() -> void:
	if (sprit.global_position.x > ScreenPositions.MIN_XY and sprit.global_position.x < ScreenPositions.MAX_X and sprit.global_position.y > ScreenPositions.MIN_XY and sprit.global_position.y < ScreenPositions.MAX_Y):
		#setting move_local_x to false removes the gobal scaling affects 
		sprit.move_local_x(-move)
	elif sprit.global_position.x <= ScreenPositions.MIN_XY:
		sprit.global_position.x += move
	elif sprit.global_position.x >= ScreenPositions.MAX_X:
		sprit.global_position.x -= move
	elif sprit.global_position.y <= ScreenPositions.MIN_XY:
		sprit.global_position.y += move
	elif sprit.global_position.y >= ScreenPositions.MAX_Y:
		sprit.global_position.y -= move
		
	if (sprit.global_position.x <= ScreenPositions.MIN_XY or sprit.global_position.x >= ScreenPositions.MAX_X or sprit.global_position.y <= ScreenPositions.MIN_XY or sprit.global_position.y >= ScreenPositions.MAX_Y):
		sprit.rotate(rotate)
	pass

func rotateSprite() -> void:
	if Input.is_action_pressed("ui_left"):
		sprit.rotate(-sprit_rotate)
	elif Input.is_action_pressed("ui_right"):
		sprit.rotate(sprit_rotate)

func moveToMouse() -> void:
	sprit.look_at(getMouse)
	sprit.move_local_x(-(speed * move))
