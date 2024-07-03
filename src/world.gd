extends Node2D
var count := 0
const WIDTH := 100
const HEIGHT := 70
var mgh := MapGenHandler.new()
var mgm := MapGenManager.new()
var sot := []


func _ready() -> void:
	randomize()
	mgm.setWidthAndHeight( WIDTH, HEIGHT )
	mgm.startThread()


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("r"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("step"):
		pass
	if Input.is_action_just_pressed("w"):
		pass


func printMapGen( res:Array ) -> void:
	mgh.printMap(res)
	mgh.printMap(sot)
	
