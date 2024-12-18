execute as @a[tag=Falling_sky,team=red,tag=in_game] at @s run setblock ~ ~7 ~ red_concrete_powder
execute as @a[tag=Falling_sky,team=orange,tag=in_game] at @s run setblock ~ ~7 ~ orange_concrete_powder
execute as @a[tag=Falling_sky,team=yellow,tag=in_game] at @s run setblock ~ ~7 ~ yellow_concrete_powder
execute as @a[tag=Falling_sky,team=lime,tag=in_game] at @s run setblock ~ ~7 ~ lime_concrete_powder
execute as @a[tag=Falling_sky,team=green,tag=in_game] at @s run setblock ~ ~7 ~ green_concrete_powder
execute as @a[tag=Falling_sky,team=blue,tag=in_game] at @s run setblock ~ ~7 ~ blue_concrete_powder
execute as @a[tag=Falling_sky,team=aqua,tag=in_game] at @s run setblock ~ ~7 ~ light_blue_concrete_powder
execute as @a[tag=Falling_sky,team=pink,tag=in_game] at @s run setblock ~ ~7 ~ pink_concrete_powder
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 30..89 run schedule function fallingsky:block_generator/150 2.66666t
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 29 run function fallingsky:block_generator/200
execute if score in_game process_ctrl matches 1 if score countdown core_clock matches 29 run tellraw @a {"text":"[⚠] 方块掉落速度已增加至200%(max)!","color":"red"}