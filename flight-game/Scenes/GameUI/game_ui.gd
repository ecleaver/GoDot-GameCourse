extends Control
class_name GameUI

@onready var game_over_label: Label = $MarginContainer/VSplitContainer/GameOverLabel

func  _ready() -> void:
	SignalHub.on_bird_died.connect(on_bird_died)

func on_bird_died() -> void:
	game_over_label.show()
	
