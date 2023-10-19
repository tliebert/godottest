extends Node2D

var test_array: Array[String] = ["Test", "Hello", "Stuff"]
var player_start_pos: Vector2 = Vector2(0, 200)
const speed = 200

func _ready():
	$Player.position = player_start_pos

func _process(delta):
	pass

func test_function():
	pass


func _on_player_laser_fired():
	print("laser fired from Level")# Replace with function body.


func _on_player_grenade_fired():
	print("grenade fired, observed from level")
	
