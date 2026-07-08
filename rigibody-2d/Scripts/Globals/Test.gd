extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func test_phyiscs(count : int, freeze: bool, sleeping: bool)->String: 
	return "Freeze: %s\nContact Count: %d\nSleeping: %s" %[
		freeze, 
		count,
		sleeping
	]
	pass
	
	
func test_value(test : String, value)->void:
	print(test, value)
	
