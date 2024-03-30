extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _process(delta):
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY


func _physics_process(delta):
	velocity.y += gravity * delta
	clamp(velocity.y, -400, 400)
	move_and_slide()
