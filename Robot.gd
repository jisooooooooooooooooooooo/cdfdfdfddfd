extends RigidBody2D

export var min_speed = 150  # Minimum speed range.
export var max_speed = 250  # Maximum speed range.


func _ready():
	var robot_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = robot_types[randi() % robot_types.size()]

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


