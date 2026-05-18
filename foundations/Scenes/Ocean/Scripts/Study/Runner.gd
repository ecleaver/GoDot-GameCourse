@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var aragorn : Character = Character.new(100, "Aragorn", "Sword")
	
	aragorn.say_character_ino()
	
