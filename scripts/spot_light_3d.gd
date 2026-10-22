extends SpotLight3D

@onready var plrFlashlight = $SpotLight3D
var isOn = false

func _ready():
	print("Flashlight ready")
	
func _input(event: InputEvent):
	if Input.is_action_just_pressed("flash"):
		isOn = !isOn
		if(isOn):
			plrFlashlight.Energy = 1
		else:
			plrFlashlight.Energy = 0
