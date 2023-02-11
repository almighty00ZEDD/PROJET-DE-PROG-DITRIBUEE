extends Panel

onready var logo : TextureRect = $Logo
onready var tween : Tween = $Logo/Tween
onready var sound_effect : AudioStreamPlayer = $sound_effect
const game_scene : PackedScene  =  preload("res://Scenes/MainMenu.tscn")

func _ready():
		tween.interpolate_property(logo, "modulate:a", 0.0, 1.0, 5.0, Tween.TRANS_SINE, Tween.EASE_IN)
		tween.start()
		sound_effect.play()

func _on_Tween_tween_completed(object, key):
	get_tree().change_scene_to(game_scene)
