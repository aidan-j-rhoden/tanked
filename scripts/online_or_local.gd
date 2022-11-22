extends Control


# Declare member variables here. Examples:
onready var online_button: Button = $VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/Online
onready var local_button: Button = $VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/Local


# Called when the node enters the scene tree for the first time.
func _ready():
	#online_button.grab_focus()
	local_button.grab_focus()
	audio_player.move.stop()

func _on_Online_pressed():
	pass # Replace with function body.


func _on_Local_pressed():
	game_data.game_mode = game_data.game_modes.MULTIPLAYER
	game_data.no_of_players = 2
	game_data.no_of_enemies = 2
	scene_changer.change_scene("res://screens/match_options_screen.tscn", 0, false)


func _on_BackButton_pressed():
	audio_player.move_scene.play()
	scene_changer.change_scene("res://screens/main_menu.tscn", 0, false)


func _on_Online_focus_entered():
	audio_player.move.play()


func _on_Local_focus_entered():
	audio_player.move.play()


func _on_BackButton_focus_entered():
	audio_player.move.play()
