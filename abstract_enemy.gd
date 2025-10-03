extends CharacterBody2D
class_name abstract_enemy;
static var x_direction = 1
var speed = 30;
const y_speed = 10;
var frame_count = 60



func _ready() -> void:
	pass;
func _physics_process(delta: float) -> void:
	move();
	pass;



#i think i actually want to replicate the behavior from the first iterations oft he paddle lol

func move():
	#Timer because I want jumpy movement like original game
	if frame_count < 60:
		frame_count +=1;
	else:
		#Checks if any object has gone off screen, then reverses x direction for all enemies
		await hit_wall_checker(); #Trying to solve the desync issue with await
		
		#Moves all enemies 
		move_and_collide(Vector2(speed * x_direction, 0));

		#resets timer
		frame_count = 0;
		
		
func hit_wall_checker():
	#if x value is greater than 360
	if position.x >= 360:
		#Change x direction
		x_direction = -1;
		shift_y();
	elif position.x <= 0:
		x_direction = 1;
		shift_y();

func shift_y():
	#move enemies down by yspeed units
	position.y += y_speed;
	
