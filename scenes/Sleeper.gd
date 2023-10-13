extends CharacterBody2D

# Get the gravity from the project settings to be synced with RigidBody nodes.

func _ready():
	pass

func _physics_process(_delta):
	
	var resultant = Input.get_vector("left", "right", "up", "down")
	
	velocity = resultant * 500

	move_and_slide()
