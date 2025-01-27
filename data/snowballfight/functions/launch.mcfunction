#init
scoreboard players set installed snowballfight_ctrl -1

function snowballfight:install

#init
#scoreboard display

function snowballfight:score_action/update

#scoreboard update
scoreboard players reset * game_room_finish
scoreboard players set after_game process_ctrl 0
scoreboard players set end_game process_ctrl 0
scoreboard players set before_game process_ctrl 2
scoreboard players set in_game process_ctrl 0

#tag init
tag @a[tag=player] add Snowball_fight

#prepare
gamemode adventure @a[tag=Snowball_fight]
clear @a[tag=Snowball_fight]
scoreboard players set @a[tag=Snowball_fight] game_finish_count 0
scoreboard players set @a[tag=Snowball_fight] game_player_count 1
scoreboard players reset * game_store_score

execute as @a[tag=Snowball_fight] run gamemode adventure @s

#before game countdown for 90s intro -> before (loop!)
function snowballfight:game_intro/main
# |
# v
#function snowballfight:game_process/before_game
function snowballfight:game_process/before_game
# |
# v
#function snowballfight:game_process/in_game
# |
# v
#function snowballfight:game_process/after_game

#start countdown!
function core:clock/ingame/main