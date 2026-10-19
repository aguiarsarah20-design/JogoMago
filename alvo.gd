extends Area2D
# O alvo é um frasco de poção. Quando o Player encosta, o frasco é coletado.
# (o sinal body_entered está conectado a esta função na própria cena alvo.tscn)

func _ready() -> void:
	add_to_group("frascos")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		queue_free()
