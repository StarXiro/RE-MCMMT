#获得了参数 name rank score color
$data modify storage mcmmt:core team_display.name set from storage mcmmt:core team.list[$(index)].name
$data modify storage mcmmt:core team_display.score set from storage mcmmt:core team.list[$(index)].score
$data modify storage mcmmt:core team_display.rank set from storage mcmmt:core team.list[$(index)].rank
$data modify storage mcmmt:core team_display.color set from storage mcmmt:core team.list[$(index)].color

function core:scoreboard_display/score_update/display with storage mcmmt:core team_display