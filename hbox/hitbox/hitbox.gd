class_name Hitbox extends Area2D


@export var actor: Entity:
	get:
		if not actor:
			actor = get_parent()
		return actor


func _ready() -> void:
	if not is_connected("body_entered", _on_hitbox_pinged):
		connect("body_entered", _on_hitbox_pinged)


func _on_hitbox_pinged(hurtbox: Hurtbox) -> void:
	print("yay")

	var target := hurtbox.actor as Entity
	var damage := actor.attack_damage

	print(name, " hit ", target)

	target.take_damage(damage)

	if actor is Projectile:
		actor.apply_hit_effect(target)
		print(name, " applied hit effect to ", target)
