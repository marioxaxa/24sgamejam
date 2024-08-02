extends Node2D

@export var transition_path : PackedScene

var draggable = preload("res://scenes/gamescenes/draggable_block.tscn")

func _ready():
	for i in range(PuzzlesCodes.colors_codes_symbols.size()):
		var scene_instance = draggable.instantiate()
		print(scene_instance)
		scene_instance.get_node("Control/HBoxContainer/Label").text = PuzzlesCodes.colors_codes_symbols[i]
		
		var cor = ""
		if (PuzzlesCodes.colors_codes_answer[i] == 'R'):
			cor = "Vermelho"
		if (PuzzlesCodes.colors_codes_answer[i] == 'Y'):
			cor = "Amarelo"
		if (PuzzlesCodes.colors_codes_answer[i] == 'G'):
			cor = "Verde"
		if (PuzzlesCodes.colors_codes_answer[i] == 'B'):
			cor = "Azul"
		
		scene_instance.get_node("Control/HBoxContainer/Label2").text = cor
		scene_instance.position = Vector2(randf_range(50,500),randf_range(50,750))
		add_child(scene_instance)


func _on_button_pressed():
	pass # Replace with function body.
