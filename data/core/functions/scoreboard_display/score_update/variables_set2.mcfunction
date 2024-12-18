$data modify storage mcmmt:core team.list[$(index)].color set from entity @s data.color
data modify storage mcmmt:core team_display.name2 set from entity @s data.name

#第1-2名特化
execute if score @s core_team_list matches ..2 run function core:scoreboard_display/score_update/below2

#第8名特化
execute if score @s core_team_list matches 7 run function core:scoreboard_display/score_update/equal7

#其他排名
execute if score @s core_team_list matches 3..6 run function core:scoreboard_display/score_update/beyond2