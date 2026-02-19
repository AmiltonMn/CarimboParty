extends Node2D

func _ready():
extends HBoxContainer

var panel: PackedScene = preload("res://source/UI/PlayerPanel.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for player in Global.players:
		var vbox = VBoxContainer.new()
		var newPanel = panel.instantiate()
		var characterContainer = newPanel.find_child("CharacterContainer")
		player.name = "Character"
		characterContainer.add_child(player)
		vbox.add_child(newPanel)
		vbox.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		vbox.custom_minimum_size = Vector2(285, 0)
		vbox.alignment = BoxContainer.ALIGNMENT_CENTER
		add_child(vbox)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
