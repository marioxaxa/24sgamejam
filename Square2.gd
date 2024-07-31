extends Node2D

var drag_data

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				self.drag_start(event.position)
			elif event.is_action_released("ui_left_click"):
				self.drag_end()

func drag_start(mouse_position):
	self.drag_data = mouse_position - self.global_position

func drag_end():
	self.drag_data = null

func _process(_delta):
	if self.drag_data != null:
		var mouse_position = get_global_mouse_position()
		self.global_position = mouse_position - self.drag_data
