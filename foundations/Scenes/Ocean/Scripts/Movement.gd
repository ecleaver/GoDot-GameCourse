## A class created to control the movement of a AnimatedSprite2d.  
## Needs to be given an AnimatedSprite2d to work.
extends Node2D
class_name Movement

## needs to be assigned a Animated Sprite 2d
var _sprit: AnimatedSprite2D

## needs to be feed the mouses poition 
var _getMouse = 0
## 
var _radius : float = 100
## angle needs to receive a value * delta
var _angle : float = 0
## used to chnage the planes speed
var _speed : float = .6
## update the x position of the circle 
var _pos_xCircle : float = 500
## update the y position of the cirle
var _pos_yCircle : float = 300

## need to get the move * delta
var _move : float = 0


enum _ScreenPos {
	MAX_X = 1100,
	MIN_XY = 30,
	MAX_Y = 600
}
var _rotate : float = 0
var _sprit_rotate : float = 0

func _init(p_sprit : AnimatedSprite2D) -> void:
	_sprit = p_sprit
	pass

func getAngle() -> void:
	print(_angle)
	
func setAngle(p_angle) -> void:
	_angle = p_angle
	
func setMouse(mouse)->void:
	_getMouse = mouse
	
func getSpeed()->float:
	return _speed

func getDelta(p_move : float = 0, p_rotate : float = 0) -> void:
	_move = p_move
	_rotate = p_rotate
	pass
func createCircle () -> void:
	var positions : Array[float] = [_radius * cos(_angle) + _pos_xCircle, _radius * sin(_angle) + _pos_yCircle]
	_sprit.global_position.x = positions[0]
	_sprit.global_position.y = positions[1]

	
	
func moveSprite() -> void:
	if (_sprit.global_position.x > _ScreenPos.MIN_XY and _sprit.global_position.x < _ScreenPos.MAX_X and _sprit.global_position.y > _ScreenPos.MIN_XY and _sprit.global_position.y < _ScreenPos.MAX_Y):
		#setting move_local_x to false removes the gobal scaling affects 
		_sprit.move_local_x(-_move)
	elif _sprit.global_position.x <= _ScreenPos.MIN_XY:
		_sprit.global_position.x += _move
	elif _sprit.global_position.x >= _ScreenPos.MAX_X:
		_sprit.global_position.x -= _move
	elif _sprit.global_position.y <= _ScreenPos.MIN_XY:
		_sprit.global_position.y += _move
	elif _sprit.global_position.y >= _ScreenPos.MAX_Y:
		_sprit.global_position.y -= _move
		
	if (_sprit.global_position.x <= _ScreenPos.MIN_XY or _sprit.global_position.x >= _ScreenPos.MAX_X or _sprit.global_position.y <= _ScreenPos.MIN_XY or _sprit.global_position.y >= _ScreenPos.MAX_Y):
		_sprit.rotate(_rotate)
	pass

func rotateSprite() -> void:
	if Input.is_action_pressed("ui_left"):
		_sprit.rotate(-_sprit_rotate)
	elif Input.is_action_pressed("ui_right"):
		_sprit.rotate(_sprit_rotate)

func moveToMouse() -> void:
	_sprit.look_at(_getMouse)
	_sprit.move_local_x(-(_speed * _move))

func _to_string() -> String:
	return "Controls the movement of a 2d anminated sprite"
	
func _notification(what):
	if what == NOTIFICATION_PREDELETE:
		print("The movement class was deleted from memory.")
