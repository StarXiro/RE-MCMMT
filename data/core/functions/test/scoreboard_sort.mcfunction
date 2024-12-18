data modify storage mcmmt:core utils.scoreboard_sort.config.scoreboardname set value "core_team_score"
data modify storage mcmmt:core utils.scoreboard_sort.config.loop_max set value 8
function core:scoreboard_sort/main with storage mcmmt:core utils.scoreboard_sort.config
execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"[✔] ","color":"green"},{"text":"Test Accepted.","color":"gray"}]