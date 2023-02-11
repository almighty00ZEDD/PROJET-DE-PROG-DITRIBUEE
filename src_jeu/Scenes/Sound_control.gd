extends TextureButton

var sound_on  = preload("res://Sprites/sound_on.png") 
var sound_off  = preload("res://Sprites/sound_off.png") 

var audio_bus = AudioServer.get_bus_index("Master")

func _ready():
	_button_toggle()


func _on_Sound_btn_pressed():
	AudioServer.set_bus_mute(audio_bus,not (AudioServer.is_bus_mute(audio_bus)))
	_button_toggle()

func _button_toggle():
	if AudioServer.is_bus_mute(audio_bus):
		texture_normal  =   sound_off
	else :
		texture_normal = sound_on
