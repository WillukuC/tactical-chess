extends Node2D

@onready var squares: Array[Marker2D] = [
	$Squares/H1, $Squares/H2, $Squares/H3, $Squares/H4, $Squares/H5, $Squares/H6, $Squares/H7, $Squares/H8,
	$Squares/G1, $Squares/G2, $Squares/G3, $Squares/G4, $Squares/G5, $Squares/G6, $Squares/G7, $Squares/G8,
	$Squares/F1, $Squares/F2, $Squares/F3, $Squares/F4, $Squares/F5, $Squares/F6, $Squares/F7, $Squares/F8,
	$Squares/E1, $Squares/E2, $Squares/E3, $Squares/E4, $Squares/E5, $Squares/E6, $Squares/E7, $Squares/E8,
	$Squares/D1, $Squares/D2, $Squares/D3, $Squares/D4, $Squares/D5, $Squares/D6, $Squares/D7, $Squares/D8,
	$Squares/C1, $Squares/C2, $Squares/C3, $Squares/C4, $Squares/C5, $Squares/C6, $Squares/C7, $Squares/C8,
	$Squares/B1, $Squares/B2, $Squares/B3, $Squares/B4, $Squares/B5, $Squares/B6, $Squares/B7, $Squares/B8,
	$Squares/A1, $Squares/A2, $Squares/A3, $Squares/A4, $Squares/A5, $Squares/A6, $Squares/A7, $Squares/A8,
];

var occupied_squares: Array[Marker2D] = [];

func _ready() -> void:
	set_occupied_squares();
	get_occupied_squares();

func get_occupied_squares() -> Array[Marker2D]:
	print("Occupied squares: ", occupied_squares)
	return occupied_squares;
	
func set_occupied_squares() -> void:
	occupied_squares.clear();
	
	var white_pieces = $Pieces/White.get_children();
	var black_pieces = $Pieces/Black.get_children();
	
	for piece: Piece in white_pieces:
		occupied_squares.append(piece.get_current_square());
	for piece: Piece in black_pieces:
		occupied_squares.append(piece.get_current_square());
