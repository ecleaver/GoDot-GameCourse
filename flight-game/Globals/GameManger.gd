extends Node

const MENU = preload("uid://bgutlqblwvmv7")
const GAME = preload("uid://cd74pa2tprjig")

func load_main_scene() -> void:
	get_tree().change_scene_to_packed(MENU)

func load_game_scene() -> void:
	get_tree().change_scene_to_packed(GAME)
