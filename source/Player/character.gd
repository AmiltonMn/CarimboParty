extends CharacterBody2D

class_name Character

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var disableMove: bool = true
var playerName: String
var color: Color

func _ready() -> void:
	var head: TextureRect = get_parent().get_parent().find_child("HeadContainer").find_child("PlayerHead")
	var body: TextureRect = get_parent().get_parent().find_child("BodyContainer").find_child("PlayerBody")

	body.texture = $Body.texture
	head.texture = $Head.texture

func change_head(image: Image):
	if(image != null && $Head != null):
		$Head.texture = ImageTexture.create_from_image(image)
	else:
		print("aaaaa")

func change_body(image: Image):
	if(image != null && $Body != null):
		$Body.texture = ImageTexture.create_from_image(image)

func _physics_process(delta: float) -> void:
	if(!disableMove):
		var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		if direction:
			velocity = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.y = move_toward(velocity.y, 0, SPEED)

		move_and_slide()
	else:
		pass
