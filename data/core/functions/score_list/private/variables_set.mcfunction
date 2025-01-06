#set rank name score
execute store result storage mcmmt:core team.rank int 1 run scoreboard players get @s core_scoreboard_sort_prank
$execute store result storage mcmmt:core team.score int 1 run scoreboard players get @s $(scoreboardname)
data modify storage mcmmt:core team.name set from entity @s CustomName
data modify storage mcmmt:core team.name set string storage mcmmt:core team.name 9 11
scoreboard players operation @s core_team_list = j core_index
scoreboard players add j core_index 1
function core:score_list/private/list_generate with storage mcmmt:core team