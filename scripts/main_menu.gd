extends Control

onready var players_button: Button = get_node("VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/NoOfPlayersButton")
onready var audio_move_start: AudioStreamPlayer = get_node("Audio_Move_Start")
onready var audio_move: AudioStreamPlayer = get_node("Audio_Move")
var players: int = 1

func _ready():
	players_button.grab_focus()

func _on_StartGameButton_pressed():
	audio_move_start.play()
	game_data.no_of_players = players
	

func _on_StartGameButton_focus_exited():
	audio_move.play()

func _on_NoOfPlayersButton_pressed():
	audio_move.play()
	set_no_of_players()
	players_button.set_text("PLAYERS: %s" % players)

func _on_NoOfPlayersButton_focus_exited():
	audio_move.play()

func _on_QuitGameButton_pressed():
	audio_move.play()
	get_tree().quit()

func _on_QuitGameButton_focus_exited():
	audio_move.play()
	
func _on_Audio_Move_Start_finished():
	get_tree().change_scene("res://screens/game_screen.tscn")

func set_no_of_players():
	players += 1
	if players > 2:
		players = 1
