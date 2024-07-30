extends Control

enum Menu { MAIN_MENU, MODE_MENU }

@export var mode_button : Button
@export var exit_button : Button

@export var start_scene_path : PackedScene
@export var transition_path : PackedScene

var current_menu : Menu = Menu.MAIN_MENU

func _enter_tree():
	mode_button.pressed.connect(_on_mode_pressed)
	exit_button.pressed.connect(_on_exit_pressed)
	pass
	
func _exit_tree():
	mode_button.pressed.disconnect(_on_mode_pressed)
	exit_button.pressed.disconnect(_on_exit_pressed)


func _on_exit_pressed():
	print('g')
	SceneTransitionManager.change_scene_with_transition(
		start_scene_path,
		transition_path
	)


func _on_mode_pressed():
	current_menu = Menu.MODE_MENU


func _on_return_main_menu_button_pressed():
	current_menu = Menu.MAIN_MENU
