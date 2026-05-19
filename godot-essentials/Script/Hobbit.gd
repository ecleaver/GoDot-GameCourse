class_name Hobbit
extends Node2D

var process_frames: int = 0
var physics_frames: int = 0

func ready() ->void:
	pass
	
func _process(delta: float) -> void:
	rotate(3 * delta)
	process_frames += 1
	print("Process %d" %process_frames)

func _physics_process(delta: float) -> void:
	physics_frames += 1
	
	print("Physics Process %d" %physics_frames)
	pass
	
