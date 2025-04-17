class_name Piece

extends Node2D

@export var is_white: bool = true;

@onready var white_sprite: Sprite2D = $WhiteSprite;
@onready var black_sprite: Sprite2D = $BlackSprite;

func _ready() -> void:
	if is_white:
		white_sprite.visible = true;
	else:
		black_sprite.visible = true;

func get_valid_squares() -> Array[Marker2D]:
	printerr("Method is abstract and should be overwritten");
	return [];
