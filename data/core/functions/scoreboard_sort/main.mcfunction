#parameters need : scoreboardname \ loop_cnt \ score \ loop_max
scoreboard players reset * core_scoreboard_sort_sort
scoreboard players reset * core_scoreboard_sort_rank
scoreboard players reset * core_scoreboard_sort_temp
scoreboard players set @e[scores={core_scoreboard_sort_prank=-2147483648..2147483647}] core_scoreboard_sort_prank 0
scoreboard players set loop_cnt core_scoreboard_sort_sort 1
scoreboard players set loop_index core_scoreboard_sort_sort 0
execute store result score loop_max core_scoreboard_sort_sort run data get storage mcmmt:core utils.scoreboard_sort.config.loop_max
$execute as @e[scores={$(scoreboardname)=-2147483648..2147483647}] run scoreboard players operation @s core_scoreboard_sort_temp = @s $(scoreboardname)

#loop
function core:scoreboard_sort/private/loop