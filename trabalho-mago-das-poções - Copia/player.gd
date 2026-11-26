extends CharacterBody2D

const SPEED = 80.0

@onready var animacao: AnimatedSprite2D = $Animacao

func _physics_process(_delta: float) -> void:
	velocity = Vector2.ZERO

	# Lendo entrada do usuário
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	if Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
	if Input.is_action_pressed("ui_down"):
		velocity.y = SPEED

	move_and_slide()

	# Bateu em alguma coisa? Recomeça a fase.
	if get_slide_collision_count() > 0:
		get_tree().reload_current_scene()
		return

	# escolhendo animação
	if velocity == Vector2.ZERO:
		animacao.play("idle")
	else:
		animacao.play("walk")

	# direção da animação (direita/esquerda)
	if velocity.x < 0:
		animacao.flip_h = true
	elif velocity.x > 0:
		animacao.flip_h = false
