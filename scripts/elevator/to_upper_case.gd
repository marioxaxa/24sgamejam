extends LineEdit

func _ready():
	self.text_changed.connect(_on_LineEdit_text_changed)

func _on_LineEdit_text_changed(new_text):
	var caret_pos = self.caret_column
	self.text = new_text.to_upper()
	self.caret_column = caret_pos
