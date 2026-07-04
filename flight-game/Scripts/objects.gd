extends Node2D

class_name Objects
@onready var fire_bird: fireBird = $FireBird
@onready var point_scored: Area2D = $PointScored

const SPEED: float = 150.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalHub.on_bird_died.connect(on_bird_died)
	pass # Replace with function body.
	
func _disconent_spike() -> void:
	if point_scored.body_exited.is_connected(_on_point_scored_body_exited):
		point_scored.body_exited.disconnect(_on_point_scored_body_exited)

func on_bird_died() ->void:
	_disconent_spike()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:                         
	position.x -= SPEED * delta
		 
func _free_resources() -> void:
	queue_free()

func _on_screen_notifier_screen_exited() -> void:
	_free_resources()
	pass # Replace with function body.


func _on_life_timer_timeout() -> void:    
	_free_resources()
	pass # Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	if body is fireBird:
		print("Enter spike:", body.name)
		body._stop_flight(true)
	pass # Replace with function body.



func _on_point_scored_body_exited(body: Node2D) -> void:
	if body is fireBird:
		SignalHub.emit_on_point_scored()
		_disconent_spike()
	pass # Replace with function body.
