extends Node
signal on_bird_died
signal on_point_scored

func emit_on_death() ->void:
	on_bird_died.emit()

func emit_on_point_scored() ->void:
	on_point_scored.emit()
