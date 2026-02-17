extends HBoxContainer

var currentHeadIndex = 0
const headsPath = "res://source/assets/carimbos/heads/"
var headsList: Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	headsList = Global.load_heads()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_left_button_head_pressed() -> void:
	currentHeadIndex = headsList.size() - 1 if currentHeadIndex - 1 < 0 else (currentHeadIndex - 1)
	
	var image = Image.load_from_file(headsPath + headsList[currentHeadIndex])
	
	change_texture(image)

func _on_right_button_head_pressed() -> void:
	currentHeadIndex =  0 if currentHeadIndex + 1 > headsList.size() - 1 else (currentHeadIndex + 1)
	
	var image = Image.load_from_file(headsPath + headsList[currentHeadIndex])
	
	change_texture(image)

func change_texture(image: Image) -> void:
	$PlayerHead.texture = ImageTexture.create_from_image(image)
	$"../Character/CharacterHead".texture = ImageTexture.create_from_image(image)
