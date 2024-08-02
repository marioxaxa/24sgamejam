extends Control

enum Menu { MAIN_MENU, SETTINGS_MENU }

@export var mode_elevator_button : Button
@export var mode_reader_button : Button
@export var exit_button : Button

@export var tittle : Label

@export var start_scene_path : PackedScene
@export var transition_path : PackedScene

var mode_selected = null

var current_menu : Menu = Menu.MAIN_MENU

func _enter_tree():
	mode_elevator_button.pressed.connect(_on_mode_elevator_pressed)
	mode_reader_button.pressed.connect(_on_mode_reader_pressed)
	exit_button.pressed.connect(_on_exit_pressed)
	
func _exit_tree():
	mode_elevator_button.pressed.disconnect(_on_mode_elevator_pressed)
	mode_reader_button.pressed.disconnect(_on_mode_reader_pressed)
	exit_button.pressed.disconnect(_on_exit_pressed)


func _on_exit_pressed():
	
	SceneTransitionManager.change_scene_with_transition(
		start_scene_path,
		transition_path
	)


func _on_mode_pressed():
	current_menu = Menu.SETTINGS_MENU
	
func _on_mode_elevator_pressed():
	mode_selected= 'Elevador'
	next_menu()

func _on_mode_reader_pressed():
	mode_selected= 'Leitor'
	next_menu()
	
func next_menu():
	tittle.text = mode_selected
	current_menu = Menu.SETTINGS_MENU

func _on_return_main_menu_button_pressed():
	current_menu = Menu.MAIN_MENU
