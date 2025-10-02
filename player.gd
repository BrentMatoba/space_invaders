extends CharacterBody2D
const speed = 3;
const x_direction = 1;
const y_direction = -1;





func _physics_process(delta: float) -> void:
	
	#move right
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * x_direction, 0));
	
	#move left
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(speed * y_direction, 0));
