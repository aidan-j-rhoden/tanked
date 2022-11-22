extends Control

onready var players_button: Button = get_node("VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/PlayersButton")
onready var difficulty_button: Button = get_node("VBoxContainer/CenterContainer/VBoxContainer3/VBoxContainer_Buttons/DifficultyButton")

func _ready():
	players_button.grab_focus()
	difficulty_button.set_text("DIFFICULTY: %s" % game_data.difficulty_levels[game_data.difficulty_level])
	players_button.set_text("PLAYERS: %d" % game_data.no_of_players)
	audio_player.move.stop()

# Button Actions
func _on_PlayersButton_pressed():
	game_data.set_no_of_players(game_data.no_of_players + 1)
	players_button.set_text("PLAYERS: %d" % game_data.no_of_players)
	audio_player.move.play()

func _on_DifficultyButton_pressed():
	game_data.set_difficulty(game_data.difficulty_level + 1)
	difficulty_button.set_text("DIFFICULTY: %s" % game_data.difficulty_levels[game_data.difficulty_level])
	audio_player.move.play()

func _on_ContinueButton_pressed():
	audio_player.move.play()
	scene_changer.change_scene("res://screens/game_screen.tscn", 0, true)

func _on_BackButton_pressed():
	audio_player.move_scene.play()
	scene_changer.change_scene("res://screens/main_menu.tscn", 0, false)

# Button Focus Sounds
func _on_EnemiesButton_focus_entered():
	audio_player.move.play()

func _on_DifficultyButton_focus_entered():
	audio_player.move.play()

func _on_ContinueButton_focus_entered():
	audio_player.move.play()

func _on_BackButton_focus_entered():
	audio_player.move.play()
