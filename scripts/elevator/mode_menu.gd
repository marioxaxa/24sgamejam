extends Control

enum Menu { MAIN_MENU, MODE_MENU }

@export var mode_button : Button
@export var exit_button : Button

@export var your_input : LineEdit
@export var friend_input : LineEdit

@export var start_scene_path : PackedScene
@export var transition_path : PackedScene

var current_menu : Menu = Menu.MAIN_MENU

var characters = 'abcdefghijklmnopqrstuvwxyz'

func _enter_tree():
	mode_button.pressed.connect(_on_mode_pressed)
	exit_button.pressed.connect(_on_exit_pressed)
	your_input.text = generate_word(characters, 4)
	
func _exit_tree():
	mode_button.pressed.disconnect(_on_mode_pressed)
	exit_button.pressed.disconnect(_on_exit_pressed)


func _on_exit_pressed():
	current_menu = Menu.MAIN_MENU


func _on_mode_pressed():
	
	var seu_codigo = your_input.text
	var codigo_do_amigo = friend_input.text
	
	seed(hash(seu_codigo+codigo_do_amigo))
	
	SceneTransitionManager.change_scene_with_transition(
		start_scene_path,
		transition_path
	)

func generate_word(chars, length):
	var word: String
	var n_char = len(chars)
	for i in range(length):
		word += chars[randi()% n_char]
	return word

