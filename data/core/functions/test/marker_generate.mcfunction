data modify storage mcmmt:core utils.marker_generate.scoreboardname set value "core_team_score"
data modify storage mcmmt:core utils.marker_generate.namelist set from storage mcmmt:core config.teamlist
data modify storage mcmmt:core utils.marker_generate.displaynamelist set from storage mcmmt:core config.teamlist2
data modify storage mcmmt:core utils.marker_generate.colorlist set from storage mcmmt:core config.teamcolor
function core:marker_generate/main

execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"[✔] ","color":"green"},{"text":"Test Accepted.","color":"gray"}]