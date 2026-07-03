extends Node
@onready var spikes_holder: Node2D = $"Spikes holder"
@onready var upper_spawn: Marker2D = $UpperSpawn
@onready var lower_spawn: Marker2D = $LowerSpawn
const OBJECTS = preload("uid://bkplp8mj7ppon")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_spawn_spike()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _spawn_spike() ->void:
	var new_spike : Objects = OBJECTS.instantiate()
	var y_position : float = randf_range(upper_spawn.position.y, lower_spawn.position.y)
	
	new_spike.position = Vector2(upper_spawn.position.x, y_position)
	spikes_holder.add_child(new_spike)
	pass


func _on_spawn_timer_timeout() -> void:
	_spawn_spike()
	pass # Replace with function body.
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		GameManger.load_main_scene()
		pass


func _on_fire_bird_on_plane_died() -> void:
	pass # Replace with function body.
