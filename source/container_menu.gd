extends VBoxContainer

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_sair_pressed() -> void:
	get_tree().quit()

func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://source/UI/PlayerSelect.tscn")
