extends Node

var headsList: Array
var bodiesList: Array

var players: Array[Character] = []

var newPlayer: PackedScene = preload("res://source/Player/Character.tscn")

func load_heads() -> Array:
	var file = DirAccess.open("res://source/assets/carimbos/heads/").get_files()
	
	if(file == null):
		print("Arquivo vazio!")
		return headsList
	
	for image in file:
		if(!image.contains(".import")):
			headsList.append(image)
	
	return headsList

func load_bodies() -> Array:
	var file = DirAccess.open("res://source/assets/carimbos/bodies/").get_files()
	
	if(file == null):
		print("Arquivo vazio!")
		return bodiesList
	
	for image in file:
		if(!image.contains(".import")):
			bodiesList.append(image)
	
	return bodiesList

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	for i in range(4):
		var player: Character = newPlayer.instantiate()
		var headImage = Image.load_from_file("res://source/assets/carimbos/heads/CabecaPixel.png")
		var bodyImage = Image.load_from_file("res://source/assets/carimbos/bodies/CorpoPixel.png")
		player.playerName = "Jogador %d" % [i + 1]
		player.change_head(headImage)
		player.change_body(bodyImage)
		players.append(player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
