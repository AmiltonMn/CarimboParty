extends Node2D

var num_players: int = 1
var carimbo_cena: PackedScene = preload("res://source/Minigames/guerra_de_territorios/carimbo.tscn")

func _ready() -> void:
	for i in range(num_players):
		var carimbo = carimbo_cena.instantiate()
		$"chão/carimbos".add_child(carimbo)

func _process(_delta: float) -> void:
	pass


func _on_game_timer_timeout() -> void:
	pass
	
