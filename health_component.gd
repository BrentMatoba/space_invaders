extends Node2D
class_name HealthComponent;
@export var health = 0;
var max_health : int

func ready(): #called once when the object enters the scene tree
	var max_health = health;


func heal():
	if health < max_health:
		health += 1;

func die():
	get_parent().queue_free();

func takeDamage(attack):
	health -= attack;
	if health <= 0:
		die();
