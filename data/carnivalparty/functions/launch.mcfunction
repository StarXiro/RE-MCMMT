#init
scoreboard players set installed carnivalparty_ctrl -1
function carnivalparty:install

#init
#countdown 
scoreboard players set carnival_party current_game 1
scoreboard players set countdown core_clock 90
scoreboard players set round_count process_ctrl 0
scoreboard players add game_count core_game_config 1
scoreboard players reset @a game_player_score
scoreboard players reset * game_team_score
#scoreboard display
function carnivalparty:score_action/update

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set end_game process_ctrl 0
scoreboard players set before_game process_ctrl 1
scoreboard players set in_game process_ctrl 0
scoreboard players set room_mode core_scoreboard_display_config 0
scoreboard players set round_mode core_scoreboard_display_config 1
#map reload
function carnivalparty:reload_map/origin

#tag init
tag @a[tag=player] add Carnival_party

#prepare
gamemode adventure @a[tag=Carnival_party]
clear @a[tag=Carnival_party]
effect give @a[tag=Carnival_party] weakness infinite 9 true
scoreboard players set @a[tag=Carnival_party] game_player_score 0
scoreboard players reset * game_store_score
spreadplayers -300 -300 2 20 false @a[tag=Carnival_party]
scoreboard players set @a[tag=Carnival_party] game_finish_count 1

#trigger loop
function carnivalparty:loop_actions/item_kill

#before game countdown for 90s intro -> before (loop!)
function carnivalparty:game_intro/main
# |
# v
schedule function carnivalparty:game_process/before_game 1400t
#function carnivalparty:game_process/before_game
# |
# v
#function carnivalparty:game_process/in_game
# |
# v
#function carnivalparty:game_process/after_game

#start countdown!
function core:clock/ingame/main