extends Node2D

@export var transition_path : PackedScene
@export var colors_puzzle_scene : PackedScene


func _on_colors_button_pressed():
	print('cores')
	SceneTransitionManager.change_scene_with_transition(
		colors_puzzle_scene,
		transition_path
	)


func _on_numbers_button_pressed():
	print('numbers')
	pass # Replace with function body.
