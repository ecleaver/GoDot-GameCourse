extends Node
signal on_bird_died

func emit_on_death() ->void:
	on_bird_died.emit()
