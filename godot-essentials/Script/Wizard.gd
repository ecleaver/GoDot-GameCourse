class_name Wizard
extends Node2D
@onready var reval_timer: Timer = $RevalTimer
@onready var spell_timer: Timer = $"Spell Timer"
signal cast_spell


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	pass # Replace with function body.




func _on_reval_timer_timeout() -> void:
	show()
	pass # Replace with function body.


func _on_spell_timer_timeout() -> void:
	print("cast spell")
	cast_spell.emit()
	pass # Replace with function body.
	
