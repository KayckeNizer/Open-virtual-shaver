extends TouchScreenButton

var pressed_button := false
var vib_duration := 0.5

func _ready():
	get_parent().get_node("background/animation_on").play("turn_off")

func _on_TouchScreenButton_pressed():
	get_parent().get_node("background/shaver_audio").play()
	get_parent().get_node("background/animation_on").play("turn_on")
	Input.vibrate_handheld(500)
	pressed_button = true


func _on_TouchScreenButton_released():
	get_parent().get_node("background/shaver_audio").stop()
	get_parent().get_node("background/animation_on").play("turn_off")
	vib_duration = 0.5
	pressed_button = false
	
func _process(delta):
	vib_duration -= delta
	
	if pressed_button and vib_duration <= 0:
		vib_duration = 0.5
		Input.vibrate_handheld(500)

		
