extends Button

func _ready():
	get_parent().get_node("Control").visible = false

func _on_Button_Settings_pressed():
	if get_parent().get_node("Control").visible:
		get_parent().get_node("Control").visible = false
	elif not get_parent().get_node("Control").visible:
		get_parent().get_node("Control").visible = true
