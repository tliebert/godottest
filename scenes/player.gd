extends CharacterBody2D

var can_laser_fire = true
var can_grenade_fire = true

signal laser_fired(pos)
signal grenade_fired

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var resultant = Input.get_vector("left", "right", "up", "down")
	
	if(Input.is_action_just_pressed("primary action") && can_laser_fire):
		#randomly select a marker 2D for the laser start
		var laser_markers = $LaserStartPositions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		laser_fired.emit(selected_laser.global_position)
		
		can_laser_fire = false
		$Timer.start()
		
	if(Input.is_action_just_pressed("secondary action")  && can_grenade_fire):
		print("fired grenade")
		can_grenade_fire = false
		$GrenadeTimer.start()
		grenade_fired.emit()
		
	velocity = resultant * 500
	
	move_and_slide()


func _on_timer_timeout():
	can_laser_fire = true

func _on_grenade_timer_timeout():
	can_grenade_fire = true
