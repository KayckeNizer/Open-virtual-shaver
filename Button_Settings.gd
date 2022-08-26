extends Button

func _ready():
	get_parent().get_node("Settings_Menu").visible = false

func _on_Button_Settings_pressed():
	if get_parent().get_node("Settings_Menu").visible:
		get_parent().get_node("Settings_Menu").visible = false
		get_parent().get_node("TouchScreenButton").visible = true
	elif not get_parent().get_node("Settings_Menu").visible:
		get_parent().get_node("Settings_Menu").visible = true
		get_parent().get_node("TouchScreenButton").visible = false
