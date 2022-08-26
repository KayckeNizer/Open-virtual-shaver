extends Control

var turn_on_mode := false

func _ready():
	pass


func _on_Change_mode_Button_pressed():
	if turn_on_mode:
		get_node("Black_Background/Panel/Change_mode_Button").text = "Keep Pressed"
		turn_on_mode = false
	elif not turn_on_mode:
		get_node("Black_Background/Panel/Change_mode_Button").text = "Toggle"
		turn_on_mode = true
