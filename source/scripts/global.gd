extends Node

var headsList: Array
var bodiesList: Array

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
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
