extends StaticBody2D

var laser_scene = preload("res://scenes/laser.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_entered(body):
	print("body entered") # Replace with function body.


func _on_player_laser_fired(pos):
		var new_laser = laser_scene.instantiate()
		new_laser.position = pos
		
		add_child(new_laser)
	
