extends TouchScreenButton

var pressed_button := false
var vib_duration := 0.5
var shaving := false

func _ready():
	get_parent().get_node("background/animation_on").play("turn_off")

func _on_TouchScreenButton_pressed():
	
	if not get_parent().get_node("Settings_Menu").turn_on_mode:
		get_parent().get_node("background/shaver_audio").play()
		get_parent().get_node("background/animation_on").play("turn_on")
		Input.vibrate_handheld(500)
		pressed_button = true
		
	elif get_parent().get_node("Settings_Menu").turn_on_mode:
		if not shaving:
			get_parent().get_node("background/shaver_audio").play()
			get_parent().get_node("background/animation_on").play("turn_on")
			Input.vibrate_handheld(500)
			
			self.normal = preload("res://Assets/buttonon.png")
			self.pressed = preload("res://Assets/buttonoff.png")
			
			pressed_button = true
			shaving = true
		elif shaving:
			get_parent().get_node("background/shaver_audio").stop()
			get_parent().get_node("background/animation_on").play("turn_off")
			
			self.normal = preload("res://Assets/buttonoff.png")
			self.pressed = preload("res://Assets/buttonon.png")
			
			vib_duration = 0.5
			pressed_button = false
			shaving = false

func _on_TouchScreenButton_released():
	if not get_parent().get_node("Settings_Menu").turn_on_mode:
		get_parent().get_node("background/shaver_audio").stop()
		get_parent().get_node("background/animation_on").play("turn_off")
		vib_duration = 0.5
		pressed_button = false
	
func _process(delta):
	vib_duration -= delta
	
	if pressed_button and vib_duration <= 0:
		vib_duration = 0.5
		Input.vibrate_handheld(500)

		
