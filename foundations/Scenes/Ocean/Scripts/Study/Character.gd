class_name Character


#to create a variable at the class level 
static var character_count: int = 0

## Another way to do getters and seters
#var _health: int = 50
#var health: int:
	#get:
		#return _health
	#set(value):
		## disabled if statments
		##if(value >= 0 and value <= 100):
			##_health = value
		##else: 
			##print("Please enter a value between 0 and 100")
		#_health = clampi(value, 0, 100)
		#

# set veriables that should have getters and setters
var health: int:
	get:
		return health
	set(p_health):
		health = clampi(p_health, 0, 100)
		
# calls the function		
#var health: int:
	#get = get_health, set = set_health
## Takes in the Character name
var name : String:
	get:
		return name
	set(p_name):
		name = p_name
## Takes a string for the weapon name
var weapon : String:
	get:
		return weapon
	set(p_weapon):
		weapon = p_weapon



func _init(p_health : int, p_name : String, p_weapon : String) -> void:
	health = p_health
	name = p_name
	weapon = p_weapon
	pass
	

## A function to print the value of health 
func get_health () -> int:
	return health

func set_health (p_health : int) -> void:
		## disabled if statments
	health = clampi(p_health, 0, 100)

## A function to print the character infoamtion 
func say_character_ino () -> void:
	print("Name: ", name)
	print("Weapon: ", weapon)
	print("Current Health: ", health)
