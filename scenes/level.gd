extends Node2D

var test_array: Array[String] = ["Test", "Hello", "Stuff"]
var toilet_start: Vector2 = Vector2(0, 200)
const speed = 200

func _ready():
	$Sleeper.position = toilet_start
	
	
	

func _process(delta):
	$Sleeper.position.x += 200 * delta
#	print(Input.is_action_pressed("left"))

func test_function():
	print("thus is a test function")
