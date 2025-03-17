extends Control

func _on_play_pressed() -> void:
	SceneTransistor.start_transition_to("res://Game.tscn")
	#get_tree().change_scene_to_file("res://Game.tscn") <- This loads without transition


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/credits.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_rooms_slider_value_changed(value: float) -> void:
	SavedData.num_levels = value
	$TextureRect/MarginContainer2/VBoxContainer/RS_Label.text = "Rooms: " + str(value)
