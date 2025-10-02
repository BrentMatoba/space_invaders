extends CharacterBody2D
static var x_direction = 1
var speed = 10;
const y_direction = 1;
var frame_count = 60
var parent


func _ready() -> void:
	pass;
func _physics_process(delta: float) -> void:
	#move_right();
	pass;


#i think i just plug this into the enemy class instead of trying to make it a component. I should learn how to make components but
#i think i actually want to replicate the behavior from the first iterations oft he paddle lol
func move_right():
	if frame_count < 60:
		frame_count +=1;
	else:
		velocity = Vector2(speed,1);
		move_and_collide(Vector2(speed, 1));
		frame_count = 0;
		
func move_left():
	pass;
func move_down():
	pass;
