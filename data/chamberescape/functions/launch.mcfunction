#init
scoreboard players set installed chamberescape_ctrl -1
function chamberescape:install

#init
#countdown 
scoreboard players set chamber_escape current_game 1
#scoreboard players set countdown core_clock 90
#schedule function chamberescape:game_process/before_game 1400t
#scoreboard players set round_count process_ctrl 0
scoreboard players add game_count core_game_config 1
scoreboard players reset @a game_player_score
scoreboard players reset * game_room_finish
scoreboard players reset * game_team_score

#scoreboard display

function chamberescape:score_action/update

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set end_game process_ctrl 0
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 0

#tag init
tag @a[tag=player] add Chamber_escape

#prepare
gamemode adventure @a[tag=Chamber_escape]
clear @a[tag=Chamber_escape]
scoreboard players set @a[tag=Chamber_escape] game_player_score 0
scoreboard players set @a[tag=Chamber_escape] game_finish_count 0
scoreboard players reset * game_store_score

function chamberescape:map/loop

item replace entity @a[tag=Chamber_escape] container.7 with carrot_on_a_stick{CustomModelData:9,display:{Name:'{"text":"获取房间信息","color":"gold","italic":false}',Lore:['{"text":"右键即可使用！","italic":false,"color":"white"}']}} 1
item replace entity @a[tag=Chamber_escape] container.8 with warped_fungus_on_a_stick{CustomModelData:9,display:{Name:'{"text":"重新开始房间","color":"green","italic":false}',Lore:['{"text":"右键即可使用！","italic":false,"color":"white"}']}} 1

#before game countdown for 90s intro -> before (loop!)
#function chamberescape:game_intro/main
# |
# v
#function chamberescape:game_process/before_game
# |
# v
#function chamberescape:game_process/in_game
# |
# v
#function chamberescape:game_process/after_game

#start countdown!
function core:clock/ingame/main