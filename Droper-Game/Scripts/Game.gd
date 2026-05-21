extends Node2D
# preload allows the resource to be loaded at comple time
const BOTTLE = preload("uid://dxywco7xxb2cr")
@onready var spawn_timer: Timer = $Spawn
@onready var  spawn_time: float = 2.0

func _physics_process(delta: float) -> void:
	
	pass

func _ready() -> void:
	spawn_timer.start(spawn_time)
	pass
	
func spawn_bottle() -> void:
	var new_bottle : Bottle = BOTTLE.instantiate()
	new_bottle.game_over.connect(_on_bottle_game_over)
	var random_size : float = randf_range(.2, .4)
	new_bottle.scale = Vector2(random_size, random_size)
	var rand_postion_x : float = randf_range(50, 1000)
	new_bottle.position = Vector2(rand_postion_x, 50)
	add_child(new_bottle)
	pass

func _on_bottle_game_over() ->void:
	print("game over")
	



func _on_dice_timer_timeout() -> void:
	spawn_bottle()
	pass # Replace with function body.
