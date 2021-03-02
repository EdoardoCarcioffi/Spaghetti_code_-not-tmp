extends KinematicBody2D

var velocity = Vector2(0, 0)
const ACTION = 1000
const SLIME_SPEED = 1920

var s = 0

func _physics_process(delta):#funzione che viene spammata ogni secondo mentre il gioco va
	if Input.is_action_just_pressed("right"):
		velocity.x = SLIME_SPEED
		rotation_degrees = 0
	if Input.is_action_just_pressed("left"):
		velocity.x = -SLIME_SPEED	
		rotation_degrees = 180
	if Input.is_action_just_pressed("down"):
		velocity.y = SLIME_SPEED
		rotation_degrees = 90
	if Input.is_action_just_pressed("up"):
		velocity.y = -SLIME_SPEED	
		rotation_degrees = 270

	
	
	
	
	move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,1)
	velocity.y = lerp(velocity.y,0,1)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
