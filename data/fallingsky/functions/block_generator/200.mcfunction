execute as @a[tag=Falling_sky,team=red,tag=in_game] at @s run setblock ~ ~6 ~ red_concrete_powder
execute as @a[tag=Falling_sky,team=orange,tag=in_game] at @s run setblock ~ ~6 ~ orange_concrete_powder
execute as @a[tag=Falling_sky,team=yellow,tag=in_game] at @s run setblock ~ ~6 ~ yellow_concrete_powder
execute as @a[tag=Falling_sky,team=lime,tag=in_game] at @s run setblock ~ ~6 ~ lime_concrete_powder
execute as @a[tag=Falling_sky,team=green,tag=in_game] at @s run setblock ~ ~6 ~ green_concrete_powder
execute as @a[tag=Falling_sky,team=blue,tag=in_game] at @s run setblock ~ ~6 ~ blue_concrete_powder
execute as @a[tag=Falling_sky,team=aqua,tag=in_game] at @s run setblock ~ ~6 ~ light_blue_concrete_powder
execute as @a[tag=Falling_sky,team=pink,tag=in_game] at @s run setblock ~ ~6 ~ pink_concrete_powder
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 1..29 run schedule function fallingsky:block_generator/200 2t
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 0 run schedule function fallingsky:game_process/after_game 20t
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 0 run scoreboard players set countdown core_clock 30
