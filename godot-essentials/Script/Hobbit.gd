class_name Hobbit
extends Node2D
@onready var hide_timer: Timer = $HideTimer
@export var hide_time: float = 2.0
signal hit_monster

func _ready() ->void:
	print("testing code")
	hide_timer.start(hide_time)
	pass
	
func _process(delta: float) -> void:
	rotate(PI * delta)
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_wizarrd"):
		hit_monster.emit()
		pass

	

func _on_hide_timer_timeout() -> void:
	rotate(0)
	print("test hide timer")
	hide()
	pass # Replace with function body.
