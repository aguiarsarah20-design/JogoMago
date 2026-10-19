extends Node2D
# Script da raiz de cada fase (o mesmo nas 3 fases).
# Mostra quantos frascos faltam e, quando todos forem coletados, vai para a próxima fase.

@export var proxima_fase: String = ""   # vazio = última fase (volta para o Menu)

var terminou := false

func _process(_delta: float) -> void:
	# Esc volta para o menu
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://menu.tscn")

	var faltam := get_tree().get_nodes_in_group("frascos").size()
	$Interface/Texto.text = "Frascos que faltam: %d" % faltam

	if faltam == 0 and not terminou:
		terminou = true
		if proxima_fase == "":
			$Interface/Texto.text = "Parabéns! Você coletou todos os frascos!"
		else:
			$Interface/Texto.text = "Fase completa!"
		await get_tree().create_timer(2.0).timeout
		if proxima_fase == "":
			get_tree().change_scene_to_file("res://menu.tscn")
		else:
			get_tree().change_scene_to_file(proxima_fase)
