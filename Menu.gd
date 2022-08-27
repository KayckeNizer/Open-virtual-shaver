extends Control

var turn_on_mode := false
var turn_vib_on := true

func _on_Change_mode_Button_pressed():
	if turn_on_mode:
		get_node("Black_Background/Panel/Change_mode_Button").text = "Keep Pressed"
		turn_on_mode = false
	elif not turn_on_mode:
		get_node("Black_Background/Panel/Change_mode_Button").text = "Toggle"
		turn_on_mode = true

func _on_Vibration_mode_Button_pressed():
	if not turn_vib_on:
		get_node("Black_Background/Panel/Vibration_mode_Button").text = "ON"
		turn_vib_on = true
	elif turn_vib_on:
		get_node("Black_Background/Panel/Vibration_mode_Button").text = "OFF"
		turn_vib_on = false
