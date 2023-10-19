extends CharacterBody2D

var can_laser_fire = true
var can_grenade_fire = true

signal laser_fired
signal grenade_fired

var laser = import()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var resultant = Input.get_vector("left", "right", "up", "down")
	
	if(Input.is_action_just_pressed("primary action") && can_laser_fire):
		print("fired laser")
		can_laser_fire = false
		$Timer.start()
		laser_fired.emit()
		
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
