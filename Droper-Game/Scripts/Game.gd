extends Node2D
# preload allows the resource to be loaded at comple time
const BOTTLE = preload("uid://dxywco7xxb2cr")
@onready var spawn_timer: Timer = $Spawn
@onready var  spawn_time: float = 2.0
@onready var view_range : Rect2 = get_viewport_rect()
const STOPABLE_GROUP : String = "stop_falling"
@onready var _points : int = 0
@onready var mage: Mage = Mage.new()
@onready var score_label: Label = $ScoreLabel
const GAME_OVER = preload("uid://dfwecoei0pbvv")
@onready var music: AudioStreamPlayer2D = $Music




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

func pause_game() -> void:
	spawn_timer.stop()
	var to_stop: Array[Node] = get_tree().get_nodes_in_group(STOPABLE_GROUP)
	for item in to_stop:
		item.set_physics_process(false)
		pass
	pass

func _on_bottle_game_over() ->void:
	pause_game()
	music.stop()
	music.stream = GAME_OVER
	music.play()
	print("game over")
	
func _on_dice_timer_timeout() -> void:
	spawn_bottle()
	pass # Replace with function body.

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		print("restart")
		get_tree().reload_current_scene()
	pass

func _update_score() -> void:
	score_label.text = "%04d" % _points


func _on_character_scored_point() -> void:
	_points += 1
	_update_score()
	pass # Replace with function body.
