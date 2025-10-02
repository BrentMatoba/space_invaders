extends Area2D

@export var health : HealthComponent;


#there's no way this is it lol
func damage(attack):
	health.takeDamage(attack);
	
