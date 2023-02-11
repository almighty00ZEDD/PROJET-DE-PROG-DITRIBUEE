extends KinematicBody2D


var velocite = Vector2(0,0)
var speed = 200
var gravity = 500
var jumpCount = 0.4

# Called when the node enters the scene tree for the first time.
func _ready():
	velocite.y = gravity
	#$camera.limit_left = 402.347
	#$camera.limit_bottom = 201.514
	pass

func set_speech(text):
	$speech.text  =  text
	
func _set_dir(dir):
	velocite   =  dir

func _physics_process(delta):	
	move_and_slide(velocite  *  speed)


