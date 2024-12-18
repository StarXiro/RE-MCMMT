#start loop
#max score
scoreboard players reset @e[scores={core_scoreboard_sort_sort=-2147483648..2147483647}] core_scoreboard_sort_sort
execute as @e[scores={core_scoreboard_sort_temp=-2147483648..2147483647}] run scoreboard players operation @s core_scoreboard_sort_sort > @e[scores={core_scoreboard_sort_temp=-2147483648..2147483647}] core_scoreboard_sort_temp
execute store result storage mcmmt:core utils.scoreboard_sort.config.maxscore int 1 run scoreboard players get @e[scores={core_scoreboard_sort_sort=-2147483648..2147483647},limit=1] core_scoreboard_sort_sort

#store
execute store result storage mcmmt:core utils.scoreboard_sort.config.loop_cnt int 1 run scoreboard players get loop_cnt core_scoreboard_sort_sort

#i + +
execute as @e[scores={core_scoreboard_sort_temp=-2147483648..2147483647}] if score @s core_scoreboard_sort_temp = @s core_scoreboard_sort_sort run scoreboard players add loop_cnt core_scoreboard_sort_sort 1

scoreboard players add loop_index core_scoreboard_sort_sort 1

#generate
execute as @e[scores={core_scoreboard_sort_temp=-2147483648..2147483647}] if score @s core_scoreboard_sort_temp = @s core_scoreboard_sort_sort run function core:scoreboard_sort/private/generate with storage mcmmt:core utils.scoreboard_sort.config

#loop
execute if score loop_index core_scoreboard_sort_sort < loop_max core_scoreboard_sort_sort run function core:scoreboard_sort/private/loop