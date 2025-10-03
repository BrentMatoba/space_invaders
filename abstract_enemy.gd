extends CharacterBody2D
class_name abstract_enemy;
static var x_direction = 1
var speed = 30;
const y_speed = 5;
var frame_count = 60



func _ready() -> void:
	pass;
func _physics_process(delta: float) -> void:
	move();
	pass;


#i think i just plug this into the enemy class instead of trying to make it a component. I should learn how to make components but
#i think i actually want to replicate the behavior from the first iterations oft he paddle lol
func move():
	if frame_count < 60:
		frame_count +=1;
	else:
		velocity = Vector2(speed,0);
		move_and_collide(Vector2(speed * x_direction, 0));
		hit_wall_checker();
		frame_count = 0;
		
		
func hit_wall_checker():
	#if x value is greater than 360
	if position.x >= 360:
		#Change x directionn
		x_direction = -1;
		shift_y();
	elif position.x <= 0:
		x_direction = 1;
		shift_y();

func shift_y():
	position.y += y_speed;
	
