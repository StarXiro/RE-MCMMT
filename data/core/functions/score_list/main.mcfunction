#准备活动
data remove storage mcmmt:core team
scoreboard players set j core_index 0
scoreboard players reset * core_team_list
data modify storage mcmmt:core team.list set value []

#排名计算
data modify storage mcmmt:core utils.marker_generate.namelist set from storage mcmmt:core config.teamlist
data modify storage mcmmt:core utils.marker_generate.displaynamelist set from storage mcmmt:core config.teamlist2
data modify storage mcmmt:core utils.marker_generate.colorlist set from storage mcmmt:core config.teamcolor
function core:marker_generate/main
data modify storage mcmmt:core uitls.scorebaord_sort.config.loop_max set value 8
function core:scoreboard_sort/main with storage mcmmt:core uitls.scorebaord_sort.config

#变量
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 1 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 2 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 3 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 4 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 5 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 6 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 7 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
execute positioned 0 0 0 as @e[sort=nearest] if score @s core_scoreboard_sort_prank matches 8 run function core:score_list/private/variables_set with storage mcmmt:core uitls.scorebaord_sort.config
