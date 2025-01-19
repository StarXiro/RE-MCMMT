#init
scoreboard players set installed chamberescape_ctrl -1

forceload add 1856 1856 1920 1920
forceload add 2856 2856 2920 2920
forceload add 3856 3856 3920 3920
forceload add 4856 4856 4920 4920
forceload add 5856 5856 5920 5920
forceload add 6856 6856 6920 6920
forceload add 7856 7856 7920 7920
forceload add 8856 8856 8920 8920

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
scoreboard players set countdown core_clock 90

#scoreboard display

function chamberescape:score_action/update

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set end_game process_ctrl 0
scoreboard players set before_game process_ctrl 2
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
#晚点会改吗,会改的。

spawnpoint @a[team=red,tag=Chamber_escape] 1888 101 1941 180
spawnpoint @a[team=orange,tag=Chamber_escape] 2888 101 2941 180
spawnpoint @a[team=yellow,tag=Chamber_escape] 3888 101 3941 180
spawnpoint @a[team=lime,tag=Chamber_escape] 4888 101 4941 180
spawnpoint @a[team=green,tag=Chamber_escape] 5888 101 5941 180 
spawnpoint @a[team=blue,tag=Chamber_escape] 6888 101 6941 180
spawnpoint @a[team=aqua,tag=Chamber_escape] 7888 101 7941 180
spawnpoint @a[team=pink,tag=Chamber_escape] 8888 101 8941 180

clear @a[tag=Chamber_escape]

item replace entity @a[tag=Chamber_escape] container.7 with carrot_on_a_stick{CustomModelData:9,display:{Name:'{"text":"获取房间信息","color":"gold","italic":false}',Lore:['{"text":"右键即可使用！","italic":false,"color":"white"}']}} 1
item replace entity @a[tag=Chamber_escape] container.8 with warped_fungus_on_a_stick{CustomModelData:9,display:{Name:'{"text":"重新开始房间","color":"green","italic":false}',Lore:['{"text":"右键即可使用！","italic":false,"color":"white"}']}} 1

execute as @a[tag=Chamber_escape] run gamemode adventure @s

#before game countdown for 90s intro -> before (loop!)
function chamberescape:game_intro/main
# |
# v
#function chamberescape:game_process/before_game
schedule function chamberescape:game_process/before_game 22t
# |
# v
#function chamberescape:game_process/in_game
# |
# v
#function chamberescape:game_process/after_game

#start countdown!
function core:clock/ingame/main