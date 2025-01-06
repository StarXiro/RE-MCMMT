execute as @a[tag=Falling_sky,team=red,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ red_concrete_powder
execute as @a[tag=Falling_sky,team=orange,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ orange_concrete_powder
execute as @a[tag=Falling_sky,team=yellow,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ yellow_concrete_powder
execute as @a[tag=Falling_sky,team=lime,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ lime_concrete_powder
execute as @a[tag=Falling_sky,team=green,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ green_concrete_powder
execute as @a[tag=Falling_sky,team=blue,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ blue_concrete_powder
execute as @a[tag=Falling_sky,team=aqua,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ light_blue_concrete_powder
execute as @a[tag=Falling_sky,team=pink,tag=in_game,tag=!] at @s unless block ~ ~1 ~ #concrete_powder run setblock ~ ~4.5 ~ pink_concrete_powder
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 150..180 run schedule function fallingsky:block_generator/100 4t
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 149 run function fallingsky:block_generator/125
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 149 run tellraw @a {"text":"[⚠] 方块掉落速度已增加至125%!","color":"gold"}