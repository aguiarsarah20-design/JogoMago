extends Control

func _on_fase_1_pressed() -> void:
	get_tree().change_scene_to_file("res://cena.tscn")

func _on_fase_2_pressed() -> void:
	get_tree().change_scene_to_file("res://fase2.tscn")

func _on_fase_3_pressed() -> void:
	get_tree().change_scene_to_file("res://fase3.tscn")

func _on_sair_pressed() -> void:
	get_tree().quit()
