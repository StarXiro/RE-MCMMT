#list_score
data modify storage mcmmt:core uitls.scorebaord_sort.config.scoreboardname set value "game_team_score"
data modify storage mcmmt:core utils.marker_generate.scoreboardname set value "game_team_score"
function core:score_list/main