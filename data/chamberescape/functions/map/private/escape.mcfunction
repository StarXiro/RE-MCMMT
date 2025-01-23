scoreboard players set @s game_finish_count 1
execute positioned 0 0 0 as @e[limit=8,tag=generated,sort=nearest] run function chamberescape:broadcast/escape with entity @s data
tag @s add finished