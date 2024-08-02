extends Node

var alfabeto = [
	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 
	'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
]

var game_answer : String

var colors_codes_symbols = ['1','2','3','4','5','6','7','8']
var colors_codes_answer = ['R','G','B','Y','R','G','B','Y']

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _shuffle_everything():
	alfabeto.shuffle()
	game_answer = alfabeto[0]+alfabeto[1]+alfabeto[2]
	
	colors_codes_symbols.shuffle()
	colors_codes_answer.shuffle()
	
	
	

