extends Control
class_name GameUI


@onready var game_over_label: Label = $MarginContainer/VSplitContainer/GameOverLabel
@onready var game_over: AudioStreamPlayer = $GameOver
@onready var press_space: Label = $"MarginContainer/VSplitContainer/Press space"
@onready var flapping_sound: AudioStreamPlayer = $FlappingSound
@onready var timer: Timer = $Timer
@onready var _points : int = 0
@onready var score_label: Label = $MarginContainer/ScoreLabel

func  _ready() -> void:
	update_points_label()
	SignalHub.on_bird_died.connect(on_bird_died)
	SignalHub.on_point_scored.connect(update_score)

func _physics_process(delta: float) -> void:
	var timer_started = false
	
func on_bird_died() -> void:
	game_over_label.show()
	game_over.play()
	timer.timeout.connect(_on_timer_timeout)
	if timer.is_stopped():
		timer.start()
	ScoreManger.high_score = _points

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		GameManger.load_main_scene()
	if press_space.visible and Input.is_action_just_pressed("power"):
		game_over.play(false)
		GameManger.load_main_scene()

func update_points_label() -> void:
	score_label.text =  "%03d" % _points

func update_score() -> void:
	_points+= 1
	update_points_label()  

func _on_timer_timeout() -> void:
	print('testing timer')
	game_over_label.hide()
	press_space.show()
	pass # Replace with function body.
