#init
scoreboard players set installed fallingsky_ctrl -1
function fallingsky:install

#init
#countdown 
scoreboard players set falling_sky current_game 1
scoreboard players set countdown core_clock 90
schedule function fallingsky:game_process/before_game 1400t
scoreboard players set round_count process_ctrl 0
scoreboard players add game_count core_game_config 1
scoreboard players reset @a game_player_score
scoreboard players reset * game_team_score
#scoreboard display
function fallingsky:score_action/update

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set end_game process_ctrl 0
scoreboard players set before_game process_ctrl 1
scoreboard players set in_game process_ctrl 0
scoreboard players set room_mode core_scoreboard_display_config 0
scoreboard players set round_mode core_scoreboard_display_config 1
#map reload
function fallingsky:reload_map/origin

#tag init
tag @a[tag=player] add Falling_sky

#prepare
gamemode adventure @a[tag=Falling_sky]
execute as @a[tag=Falling_sky,tag=!bot] run attribute @s generic.max_health base set 10
clear @a[tag=Falling_sky]
effect give @a[tag=Falling_sky] weakness infinite 9 true
scoreboard players set @a[tag=Falling_sky] game_player_score 0
scoreboard players reset * game_store_score
spreadplayers -300 -300 2 20 false @a[tag=Falling_sky]
scoreboard players set @a[tag=Falling_sky] game_finish_count 1

#trigger loop
function fallingsky:loop_actions/item_kill

#before game countdown for 90s intro -> before (loop!)
function fallingsky:game_intro/main
# |
# v
#function fallingsky:game_process/before_game
# |
# v
#function fallingsky:game_process/in_game
# |
# v
#function fallingsky:game_process/after_game

#start countdown!
function core:clock/ingame/main