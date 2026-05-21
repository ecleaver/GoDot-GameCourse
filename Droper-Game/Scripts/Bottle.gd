class_name Bottle
extends Area2D
@onready var bottles: Bottles = %Bottles

signal game_over
const _MAX_SPAWN : float = 100
var _random_size : float = randf_range(.2, .4)
var _view_range : Rect2 
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func set_range(p_view_range) ->void:
	_view_range = p_view_range

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func check_game_over() -> void:
	
	if get_viewport_rect().end.y < bottles.global_position.y:
		print("test viewport")
		game_over.emit()
		queue_free()
	pass

func randomized_settings() ->void:
	
	scale = Vector2(_random_size, _random_size)
	
	var x_start : float = _view_range.position.x + _MAX_SPAWN
	var x_end : float = _view_range.end.x + _MAX_SPAWN
	var rand_postion_x : float = randf_range(x_start, x_end)
	position = Vector2(rand_postion_x, _MAX_SPAWN)

func _physics_process(delta: float) -> void:
	position.y += 100 * delta
	check_game_over()
	
	
