class_name Bottles
extends Sprite2D

const _SPEED : int = 80
const ROTATION_SPEED : int = 45
var _set_direction : bool = false
var _rotate_direction  = 1
var _bottles : Dictionary = { 
	"Bottle 1" : "res://Assets/Bottles/Bottle 1.png", 
	"Bottle 2" : "res://Assets/Bottles/Bottle 2.png",
	"Bottle 3" : "res://Assets/Bottles/Bottle 3.png"
}

func _update_texture () ->void:
	var key = _bottles.keys().pick_random()
	texture = load(_bottles[key])
	pass
	

func _set_spin_direction() ->void:
	var random : int = randi_range(0, 1)
	if(random == 0):
		_rotate_direction = -1
	elif(random == 1):
		_rotate_direction = 1
	pass

func _ready() -> void:
	_update_texture ()
	_set_spin_direction()
	pass

func _physics_process(delta: float) -> void:
	rotate(PI * delta * _rotate_direction)
	pass
	
