extends VBoxContainer

var mapa_territorios: PackedScene = preload("res://source/Minigames/guerra_de_territorios/mapa.tscn")

func _ready() -> void:
	pass # Replace with function body.

func _process(_delta: float) -> void:
	pass


func _on_sair_pressed() -> void:
	pass # Replace with function body.


func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_packed(mapa_territorios)


func _on_conquistas_pressed() -> void:
	pass # Replace with function body.
