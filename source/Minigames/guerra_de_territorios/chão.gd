extends Node2D

var posicao: Vector2

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func _on_carimbo_paint(pos: Vector2) -> void:
	$lines/carimboLine.add_point(pos)
