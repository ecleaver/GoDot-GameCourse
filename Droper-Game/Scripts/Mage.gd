class_name Mage
extends Area2D
@export var speed: float = 200.0
@onready var sprit: Sprite2D = $Sprit
@onready var sounds: AudioStreamPlayer2D = $Sounds
signal scored_point

func _physics_process(delta: float) -> void:
	var move: float = Input.get_axis("ui_left", "ui_right")
	#if Input.is_action_pressed("ui_left"):
		#print('move left')
		#move -= speed
	#if Input.is_action_pressed("ui_right"):
		#print('move right')
		#move +=speed
	if !is_zero_approx(move):
		sprit.flip_h = move < 0.0
	
	position.x += move * delta * speed
	pass
	


func _on_area_entered(area: Area2D) -> void:
	if area is Bottle:
		area.queue_free()
		sounds.play()
		scored_point.emit()
	pass # Replace with function body.
