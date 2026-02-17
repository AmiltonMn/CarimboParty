extends HBoxContainer

var currentBodyIndex = 0
const bodiesPath = "res://source/assets/carimbos/bodies/"
var bodiesList: Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bodiesList = Global.load_bodies()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_left_button_body_pressed() -> void:
	currentBodyIndex = bodiesList.size() - 1 if currentBodyIndex - 1 < 0 else (currentBodyIndex - 1)
	
	var image = Image.load_from_file(bodiesPath + bodiesList[currentBodyIndex])
	
	change_texture(image)

func _on_right_button_body_pressed() -> void:
	currentBodyIndex =  0 if currentBodyIndex + 1 > bodiesList.size() - 1 else (currentBodyIndex + 1)
	
	var image = Image.load_from_file(bodiesPath + bodiesList[currentBodyIndex])
	
	change_texture(image)

func change_texture(image: Image) -> void:
	$PlayerBody.texture = ImageTexture.create_from_image(image)
	$"../Character/CharacterBody".texture = ImageTexture.create_from_image(image)
