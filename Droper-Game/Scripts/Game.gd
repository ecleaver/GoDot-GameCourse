extends Node2D
# preload allows the resource to be loaded at comple time
const BOTTLE = preload("uid://dxywco7xxb2cr")
@onready var spawn_timer: Timer = $Spawn
@onready var  spawn_time: float = 2.0
@onready var view_range : Rect2 = get_viewport_rect()



func _physics_process(delta: float) -> void:
	
	pass

func _ready() -> void:
	spawn_timer.start(spawn_time)
	pass
	
func spawn_bottle() -> void:
	var new_bottle : Bottle = BOTTLE.instantiate()
	new_bottle.set_range(view_range)
	new_bottle.randomized_settings()
	new_bottle.game_over.connect(_on_bottle_game_over)
	add_child(new_bottle)
	pass



func _on_bottle_game_over() ->void:
	print("game over")
	



func _on_dice_timer_timeout() -> void:
	spawn_bottle()
	pass # Replace with function body.
