extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func hit_by_spell () -> void:
	scale = Vector2(0.05, 0.05)

func attack_monster() -> void:
	print("attack monster") 
	scale.x /= 2 
	scale.y /= 2
