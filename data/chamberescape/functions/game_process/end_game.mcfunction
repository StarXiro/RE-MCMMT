#end_game
execute as @e[tag=room8] at @s run function chamberescape:map/private/finish_door
execute as @a[tag=Chamber_escape,tag=!finished] run tp @s -2000 109 -2000
clear @a[tag=Chamber_escape]
effect give @a[tag=Chamber_escape] instant_health 1 5 true
effect give @a[tag=Chamber_escape] resistance infinite 4 true
#scoreboard update
scoreboard players set countdown core_clock 60
scoreboard players set end_game process_ctrl 1
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 0

#core score store
execute as @a[tag=Chamber_escape] run scoreboard players operation @s score_temp = @s game_player_score

#broadcast
function chamberescape:score_action/trapped
execute positioned 0 0 0 as @e[tag=generated,sort=nearest,limit=8] run function chamberescape:broadcast/trapped with entity @s data
schedule function core:score_actions/store 100t
schedule function core:broadcast/playerscore 200t
schedule function chamberescape:broadcast/player 400t
schedule function core:broadcast/teamscore 600t
schedule function core:broadcast/corescore 800t
schedule function chamberescape:uninstall 1220t

#stop loop
schedule clear chamberescape:map/loop