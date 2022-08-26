extends Button

func _ready():
	$background/animation_on.play("turn_off")

func _on_turn_on_button_pressed():
	$shaver_audio.play()
	print("Button pressed")
	$background/animation_on.play("turn_on")
	
	Input.vibrate_handheld()

func _on_turn_on_button_button_up():
	$shaver_audio.stop()
	print("Button released")
	$background/animation_on.play("turn_off")
