#init
spawnpoint @a[tag=Falling_sky] -300 130 -335
spreadplayers -300 -300 2 20 false @a[tag=Falling_sky]
execute as @a[tag=Falling_sky] run gamemode adventure @s
scoreboard players set @a[tag=Falling_sky] game_finish_count 1
effect give @a[tag=Falling_sky] instant_health infinite 3 true
execute as @a[tag=Falling_sky,tag=!bot] run attribute @s generic.max_health base set 10
clear @a[tag=Falling_sky]
effect give @a[tag=Falling_sky] weakness infinite 9 true
scoreboard players add round_count process_ctrl 1

#schedule countdown

schedule function fallingsky:game_process/in_game 400t
schedule function core:countdown/start 100t
function fallingsky:loop_actions/death_justice
function fallingsky:loop_actions/end_justice
function fallingsky:reload_map/origin 
