extends Control
#preloads as a pack

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("power"):
		GameManger.load_game_scene()
		pass
