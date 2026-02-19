extends CharacterBody2D

class_name Carimbo

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var can_move: bool = true

func _ready() -> void:
	position = Vector2(64, 64)

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("Esquerda", "Direita", "Cima", "Baixo").round()
	
	if direction and can_move:
		position.x += direction.x * 128
		position.y += direction.y * 128
		can_move = false
		$move_cooldown.start()
		
		
	#if direction:
		#velocity = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.y = move_toward(velocity.y, 0, SPEED)
#
	#move_and_slide()


func _on_move_cooldown_timeout() -> void:
	can_move = true
