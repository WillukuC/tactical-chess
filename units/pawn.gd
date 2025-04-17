extends Piece

@export var has_moved: bool = false;
@export var en_passant_permitted: bool = false;

func _init() -> void:
	point_value = 1
