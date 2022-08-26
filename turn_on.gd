extends TouchScreenButton

func _ready():
	get_parent().get_node("background/animation_on").play("turn_off")

func _on_TouchScreenButton_pressed():
	get_parent().get_node("background/shaver_audio").play()
	print("Button pressed")
	get_parent().get_node("background/animation_on").play("turn_on")
	
	Input.vibrate_handheld(500)


func _on_TouchScreenButton_released():
	get_parent().get_node("background/shaver_audio").stop()
	print("Button released")
	get_parent().get_node("background/animation_on").play("turn_off")
