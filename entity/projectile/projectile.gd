class_name Projectile extends Entity


var direction: Vector2 = Vector2.ZERO
var movement_speed: float = 0.0

var fired_by: Creature = null


func apply_hit_effect(entity: Creature) -> void:
	pass
