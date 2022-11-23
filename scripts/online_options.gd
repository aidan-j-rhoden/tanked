extends Control

onready var code_input: LineEdit = $VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/HBoxContainer/CodeInput
onready var join_button: Button = $VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/HBoxContainer/JoinButton


func _ready():
	join_button.grab_focus()
	audio_player.move.stop()


func _on_HostButton_pressed(): # Button Actions
	if game_data.game_mode != game_data.game_modes.MULTIPLAYER:
		game_data.set_no_of_enemies(game_data.no_of_enemies + 1)
	else:
		game_data.set_no_of_players(game_data.no_of_players + 1)
		game_data.set_no_of_enemies(4 - game_data.no_of_players)
	audio_player.move.play()


func _on_JoinButton_pressed():
	audio_player.move.play()
	if game_data.game_mode == game_data.game_modes.CAMPAIGN:
		scene_changer.change_scene("res://screens/game_screen.tscn", 0, true)
	else:
		scene_changer.change_scene("res://screens/game_screen.tscn", 0, true)


func _on_BackButton_pressed():
	audio_player.move_scene.play()
	scene_changer.change_scene("res://screens/online_or_local.tscn", 0, false)


func _on_HostButton_focus_entered():
	audio_player.move.play()


func _on_CodeInput_focus_entered():
	audio_player.move.play()


func _on_JoinButton_focus_entered():
	audio_player.move.play()


func _on_BackButton_focus_entered():
	audio_player.move.play()
