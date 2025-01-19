#end_game
execute as @e[tag=room8] at @s run function chamberescape:map/private/finish_door
execute as @a[tag=Chamber_escape] run gamemode spectator @s
clear @a[tag=Chamber_escape]
#scoreboard update
scoreboard players set end_game process_ctrl 1
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 0

#countdown init
scoreboard players set countdown core_clock 60
schedule function chamberescape:uninstall 1220t
schedule function core:broadcast/playerscore 200t
schedule function core:broadcast/teamscore 400t
schedule function core:broadcast/corescore 600t

#core score store
function chamberescape:score_action/calculate
schedule function core:score_actions/store 100t

#tag
tag @a[tag=Chamber_escape] remove Chamber_escape