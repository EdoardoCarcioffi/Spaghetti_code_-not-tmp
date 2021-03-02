extends KinematicBody2D

var velocity = Vector2(0, 0)
const SLIME_SPEED = 500
const GRAVITY = 40
const SLIME_JUMP = -1200

func _physics_process(delta):#funzione che viene spammata ogni secondo mentre il gioco va
	
	if Input.is_action_pressed("right"):
		velocity.x = SLIME_SPEED
	if Input.is_action_pressed("left"):
		velocity.x = -SLIME_SPEED	
		
	if is_on_floor():
		velocity.y = 0
	if is_on_ceiling():
		velocity.y = 0
	else:
		velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = SLIME_JUMP
	
	move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.4)
	#velocity.y = lerp(velocity.y,GRAVITY,0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
