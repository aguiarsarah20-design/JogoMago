extends Control

func _on_recomecar_pressed() -> void:
	get_tree().change_scene_to_file("res://cena.tscn")

func _on_sair_pressed() -> void:
	get_tree().quit()
