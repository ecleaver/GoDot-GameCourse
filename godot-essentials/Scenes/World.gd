extends Node
@onready var monster: Node2D = $Monster
@onready var hobbit: Hobbit = $Hobbit
@onready var wizard: Wizard = $Wizard

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	hobbit.hit_monster.connect(_on_hobbit_hit_monster)
	wizard.cast_spell.connect(_on_wizard_cast_spell, ConnectFlags.CONNECT_ONE_SHOT)
	pass

func _on_wizard_cast_spell() -> void:
	monster.hit_by_spell()
	hobbit.hit_monster.disconnect(_on_hobbit_hit_monster)
	pass # Replace with function body.    s

func _on_hobbit_hit_monster() -> void:
	monster.attack_monster()
	pass # Replace with function body.
