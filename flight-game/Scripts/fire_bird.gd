extends CharacterBody2D
var _fly : bool = false
const FLIGHT : float = -350
var _gravity : float = ProjectSettings.get("physics/2d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("power"): 
		_fly = true
	pass    

func _stop_flight(stopped : bool):
	$AnimatedSprite2D.stop()
	set_physics_process(stopped)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	#velocity.x = _speed

	
	velocity.y = _gravity * delta
	if _fly:
		velocity.y = FLIGHT
		_fly = false
		   
	move_and_slide()    
	if is_on_floor():
		_stop_flight(true)
	elif is_on_ceiling():
		print("On Ceiling")
	pass
