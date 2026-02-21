extends PathFollow2D
@onready var path: Path2D = $Path2D
@onready var path_follow = $Path2D/PathFollow2D
@onready var stamp = $Path2D/PathFollow2D/AnimatedSprite2D

var tiles = []
var current_tile = 0

func create_tiles():
	var curve = path.curve
	
	for i in range(curve.point_count):
		var position = curve.get_point_position(i)
		var distance = curve.get_closest_offset(position) # curve and pathfollow connection
		var tile = {
			"id": i,
			"offset": distance, # distance between the tile and curve's start
			"stamp": null   	# indicates if a stamp is occupying that tile
		}
		tiles.append(tile)

func next_tile(tiles: Array[int], i: int, current_tile: int) -> int:
	var target_tile = tiles[i].offset
	
	var tween = create_tween()
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
