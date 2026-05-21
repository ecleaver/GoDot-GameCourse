class_name Bottle
extends Area2D
@onready var bottles: Bottles = %Bottles

signal game_over

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func check_game_over() -> void:
	
	if get_viewport_rect().end.y < bottles.global_position.y:
		print("test viewport")
		game_over.emit()
		queue_free()
	pass



func _physics_process(delta: float) -> void:
	position.y += 100 * delta
	check_game_over()
	
	
