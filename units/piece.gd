class_name Piece

extends Node2D

@export var is_white: bool = true;
@export var current_square: Marker2D = null;

@onready var white_sprite: Sprite2D = $WhiteSprite;
@onready var black_sprite: Sprite2D = $BlackSprite;

var point_value: int;

func _ready() -> void:
	if is_white:
		white_sprite.visible = true;
	else:
		black_sprite.visible = true;
		
	$".".position = current_square.global_position;

func get_current_square() -> Marker2D:
	return current_square;

func set_current_square(new_current_square: Marker2D) -> void:
	current_square = new_current_square;

func get_valid_moves() -> Array[Marker2D]:
	printerr("Method is abstract and should be overwritten");
	return [];
