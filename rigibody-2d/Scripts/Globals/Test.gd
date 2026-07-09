extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func test_phyiscs(count : int = 0, freeze: bool = false, sleeping: bool = false)->String: 
	return "\n\n  Freeze: %s\n  Contact Count: %d\n  Sleeping: %s\n" %[
		freeze, 
		count,
		sleeping
	]
	pass
	
func test_dragging(is_dragging : bool = false, pos_x: float = 0.0, pos_y: float=0.0)->String:
	return "  is_dragging: %s\n  drag_start: %.0f, %0f\n" % [
		is_dragging, pos_x, pos_y
	]
	pass
	
	
func test_value(test : String, value)->void:
	print(test, value)
	
func testing(test : String)->void:
	print("testing: ", test)
