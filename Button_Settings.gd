extends Button

func _ready():
	get_parent().get_node("Settings_Menu").visible = false

func _on_Button_Settings_pressed():
	if get_parent().get_node("Settings_Menu").visible:
		get_parent().get_node("Settings_Menu").visible = false
	elif not get_parent().get_node("Settings_Menu").visible:
		get_parent().get_node("Settings_Menu").visible = true
