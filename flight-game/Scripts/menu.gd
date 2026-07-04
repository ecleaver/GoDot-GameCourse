extends Control
#preloads as a pack
@onready var points: Label = $MarginContainer/Points

func _ready() -> void:
	display_score()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("power"):
		GameManger.load_game_scene()
		pass

func display_score () ->void:
	points.text = "%03d" % ScoreManger.high_score
	pass
