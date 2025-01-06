#line2
data modify storage mcmmt:core team_display.i set value 2
data modify storage mcmmt:core team.index set value 5
function core:scoreboard_display/score_update/update with storage mcmmt:core team

#line3
data modify storage mcmmt:core team_display.i set value 3
data modify storage mcmmt:core team.index set value 6
function core:scoreboard_display/score_update/update with storage mcmmt:core team

#line4
data modify storage mcmmt:core team_display.i set value 4
data modify storage mcmmt:core team.index set value 7
scoreboard players set self core_scoreboard_display_config 1
function core:scoreboard_display/score_update/update with storage mcmmt:core team

#line1
data modify storage mcmmt:core team_display.i set value 1
data modify storage mcmmt:core team.index set value 0
function core:scoreboard_display/score_update/update with storage mcmmt:core team