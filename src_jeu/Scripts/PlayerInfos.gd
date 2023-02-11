extends HBoxContainer

onready var username_label: Label = $Username
onready var victories_label: Label = $Victories
onready var state_label: Label = $State

var player_id


func set_username(username  :  String) -> void:
	username_label.text = username
	
func set_victories(victories  :  String) -> void:
	victories_label.text =  victories
	

func set_state(state  :  String) -> void:
	state_label.text = state

func set_color(color  : String) -> void :
	username_label.set_modulate(color)
	state_label.set_modulate(color)
	victories_label.set_modulate(color)

func update_victories(vict : int) -> void:
	set_victories(String(vict))

func get_state() -> String:
	return state_label.text
	
