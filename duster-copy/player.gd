extends CharacterBody2D

@export var speed = 100
@export var rotate_speed = 3
var target = null
var door1
var door2


func _ready() -> void:
	door1 = get_node("../doors/n1")
	door2 = get_node("../doors/n2")


func rota():
	var rotate_direction = Input.get_axis("rotate_left","rotate_right")
	rotation_degrees += rotate_direction * rotate_speed
	velocity = transform.x * Input.get_axis("down", "up") * speed

#func _input(event):
#	if event.is_action_pressed("click"):
#		target = get_global_mouse_position()
#	look_at(get_global_mouse_position())

func _physics_process(delta):
	if target:
		velocity = position.direction_to(target) * speed
		if position.distance_to(target) < 10:
			velocity = Vector2.ZERO
	rota()
	move_and_slide()
	
	for tuxt in Global.text_aray:
		if tuxt == "door1":
			print("test door1");
		elif tuxt == "door2":
			print("test door2")
