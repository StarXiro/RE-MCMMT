execute as @a[tag=Falling_sky,team=red,tag=in_game] at @s run setblock ~ ~8 ~ red_concrete_powder
execute as @a[tag=Falling_sky,team=orange,tag=in_game] at @s run setblock ~ ~8 ~ orange_concrete_powder
execute as @a[tag=Falling_sky,team=yellow,tag=in_game] at @s run setblock ~ ~8 ~ yellow_concrete_powder
execute as @a[tag=Falling_sky,team=lime,tag=in_game] at @s run setblock ~ ~8 ~ lime_concrete_powder
execute as @a[tag=Falling_sky,team=green,tag=in_game] at @s run setblock ~ ~8 ~ green_concrete_powder
execute as @a[tag=Falling_sky,team=blue,tag=in_game] at @s run setblock ~ ~8 ~ blue_concrete_powder
execute as @a[tag=Falling_sky,team=aqua,tag=in_game] at @s run setblock ~ ~8 ~ light_blue_concrete_powder
execute as @a[tag=Falling_sky,team=pink,tag=in_game] at @s run setblock ~ ~8 ~ pink_concrete_powder
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 90..149 run schedule function fallingsky:block_generator/125 3.2t
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 89 run function fallingsky:block_generator/150
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 89 run tellraw @a {"text":"[⚠] 方块掉落速度已增加至150%!","color":"gold"}