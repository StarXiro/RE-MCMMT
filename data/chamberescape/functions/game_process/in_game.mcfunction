#countdown init
scoreboard players set countdown core_clock 600
scoreboard players set in_game core_ctrl 1

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 2
execute as @e[tag=room2] at @s run function chamberescape:map/private/start_door
#loop
schedule function chamberescape:game_process/end_game 12000t