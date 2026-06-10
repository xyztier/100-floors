class_name FireAbility extends Ability


@export_group("Scenes")
@export var basic_attack_scene: PackedScene = preload("uid://dvn1gxa4n3xde")
@export var skill_one_scene: PackedScene = null
@export var skill_two_scene: PackedScene = null
@export_group("Basic Attack")
@export var fire_basic_attack_speed: float = 500.0
@export_group("Skill One")
@export_group("Skill Two")


func basic_attack() -> void:
	super()
	if not basic_attack_scene:
		print("%s has no basic attack scene" % name)
		return
	var attack := basic_attack_scene.instantiate() as FireBasicAttack
	attack.direction = Game.last_basic_attack_joystick_position
	attack.movement_speed = fire_basic_attack_speed
	attack.global_position = actor.hitmarker.global_position
	attack.fired_by = actor
	player_projectiles.add_child(attack)


func skill_one() -> void:
	super()


func skill_two() -> void:
	super()
