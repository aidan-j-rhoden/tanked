extends Control


# Declare member variables here. Examples:
#onready var online_button: Button = $VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/Online
onready var back_button: Button = $VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Title/VBoxContainer/BackButton


# Called when the node enters the scene tree for the first time.
func _ready():
	back_button.grab_focus()
	audio_player.move.stop()


func _on_BackButton_pressed():
	audio_player.move_scene.play()
	scene_changer.change_scene("res://screens/main_menu.tscn", 0, false)


func _on_BackButton_focus_entered():
	audio_player.move.play()
