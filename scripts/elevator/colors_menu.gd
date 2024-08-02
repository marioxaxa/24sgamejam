extends Control

@export var red_button : Button
@export var blue_button : Button
@export var yellow_button : Button
@export var green_button : Button

@export var num1 : Label
@export var num2 : Label
@export var num3 : Label

@export var numResult : Label


@export var start_scene_path : PackedScene
@export var transition_path : PackedScene

var right_answer = []
var player_answer = []

func _enter_tree():
	
	num1.text = PuzzlesCodes.colors_codes_symbols[0]
	num2.text = PuzzlesCodes.colors_codes_symbols[1]
	num3.text = PuzzlesCodes.colors_codes_symbols[2]
	
	right_answer = [PuzzlesCodes.colors_codes_answer[0],PuzzlesCodes.colors_codes_answer[1],PuzzlesCodes.colors_codes_answer[2]]
	
	print(right_answer)

func _on_color_click(color):
	if(color == right_answer[player_answer.size()]):
		player_answer.push_front(color)
	elif(player_answer.size() > 0):
		player_answer.clear()
	if(player_answer.size() == 3):
		print('win')
		numResult.text = PuzzlesCodes.game_answer[0]




func _on_red_button_pressed():
	_on_color_click('R')


func _on_blue_button_pressed():
	_on_color_click('B')


func _on_yellow_button_pressed():
	_on_color_click('Y')


func _on_green_button_2_pressed():
	_on_color_click('G')


func _on_red_button_2_pressed():
	print('voltar')
	SceneTransitionManager.change_scene(
		start_scene_path
	)
