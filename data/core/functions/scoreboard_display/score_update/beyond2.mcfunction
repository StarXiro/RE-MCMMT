#line2
data modify storage mcmmt:core team_display.i set value 2
scoreboard players operation k core_index = @s core_team_list 
scoreboard players remove k core_index 1
execute store result storage mcmmt:core team.index int 1 run scoreboard players get k core_index
function core:scoreboard_display/score_update/update with storage mcmmt:core team

#line3
data modify storage mcmmt:core team_display.i set value 3
scoreboard players add k core_index 1
execute store result storage mcmmt:core team.index int 1 run scoreboard players get k core_index
function core:scoreboard_display/score_update/update with storage mcmmt:core team

#line4
data modify storage mcmmt:core team_display.i set value 4
scoreboard players add k core_index 1
execute store result storage mcmmt:core team.index int 1 run scoreboard players get k core_index
function core:scoreboard_display/score_update/update with storage mcmmt:core team

#line1
data modify storage mcmmt:core team_display.i set value 1
data modify storage mcmmt:core team.index set value 0
function core:scoreboard_display/score_update/update with storage mcmmt:core team