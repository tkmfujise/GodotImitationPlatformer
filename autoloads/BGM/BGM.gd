extends Node
#class_name BGM

@export_node_path("AudioStreamPlayer")
var current : NodePath

func play() -> void:
	if not current: return
	current_node().play()


func stop() -> void:
	if not current: return
	current_node().stop()


func current_node() -> Node:
	return get_node(current)


func change(path: NodePath) -> void:
	if current != path:
		stop()
		current = path
		play()


func first_steps() -> void:
	change(^'FirstSteps')
