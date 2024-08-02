extends Control

@export var title : Label
@export var my_code_line : LineEdit
@export var friend_code_line : LineEdit
@export var continue_button : Button
@export var exit_button : Button

@export var next_scene_path : PackedScene
@export var transition_path : PackedScene

func _enter_tree():
	continue_button.pressed.connect(_on_continue_button_pressed)
	exit_button.pressed.connect(_on_exit_button_pressed)

func _exit_tree():
	continue_button.pressed.disconnect(_on_continue_button_pressed)
	exit_button.pressed.disconnect(_on_exit_button_pressed)

	
func _on_continue_button_pressed():
	print('sera q foi')
	
func _on_exit_button_pressed():
	friend_code_line.text = ""
	SceneTransitionManager.change_scene_with_transition(
		next_scene_path,
		transition_path
	)
