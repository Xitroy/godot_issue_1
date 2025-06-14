extends Node2D
class_name Actor
@export var game_attributes: Resource # example: task = null

func _get(property):
	if game_attributes and property in game_attributes:
		return game_attributes.get(property)
	return null

func _set(property, value):
	if game_attributes and property in game_attributes:
		game_attributes.set(property, value)
		return true
	return false

func _ready() -> void:
	var actor = Actor.new()
	actor.game_attributes = preload("res://game_attrs.tres").duplicate(true)
	var task = Task.new()
	
	actor.task = task
	print(actor.game_attributes.task)
	print(actor.task)

	actor.task = null
	print(actor.game_attributes.task)
	print(actor.task)
