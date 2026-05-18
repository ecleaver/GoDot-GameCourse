class_name Character

## Takes in health as a int
var health: int = 50
## Takes in the Character name
var name : String = "Name"
## Takes a string for the weapon name
var weapon : String = "Weapon Name"

func _init(p_health : int, p_name : String, p_weapon : String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon
	pass
	

## A function to print the value of health 
func print_health () -> void:
	print("Health: %d" %health)

## A function to print the character infoamtion 
func say_character_ino () -> void:
	print("Name: ", name)
	print("Weapon: ", weapon)
	print("Current Health: ", health)
