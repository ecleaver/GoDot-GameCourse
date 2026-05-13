extends AnimatedSprite2D

@onready var planescript : AnimatedSprite2D = $AnimatedSprite2D
var plane = 'plane'

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if planescript.play(plane) != "void":
		planescript.play(plane)
	else:
		print(planescript)
	pass
