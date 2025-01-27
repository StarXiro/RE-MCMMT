tellraw @a ""
tellraw @a "MCMMT bench名单: (按照bench时间排序) "
data modify storage mcmmt:core utils.marker_generate.scoreboardname set value "core_player_score"
data modify storage mcmmt:core utils.marker_generate.namelist set from storage mcmmt:core config.teamlist
data modify storage mcmmt:core utils.marker_generate.displaynamelist set from storage mcmmt:core config.teamlist2
data modify storage mcmmt:core utils.marker_generate.colorlist set from storage mcmmt:core config.teamcolor
function core:marker_generate/main
data modify storage mcmmt:core utils.scoreboard_sort.config.scoreboardname set value "core_player_score"
data modify storage mcmmt:core utils.scoreboard_sort.config.loop_max set value 8
function core:scoreboard_sort/main with storage mcmmt:core utils.scoreboard_sort.config

execute as @a if score @s core_player_score = 1 core_scoreboard_sort_rank run tellraw @a {"translate":"1. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 2 core_scoreboard_sort_rank run tellraw @a {"translate":"2. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 3 core_scoreboard_sort_rank run tellraw @a {"translate":"3. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 4 core_scoreboard_sort_rank run tellraw @a {"translate":"4. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 5 core_scoreboard_sort_rank run tellraw @a {"translate":"5. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 6 core_scoreboard_sort_rank run tellraw @a {"translate":"6. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 7 core_scoreboard_sort_rank run tellraw @a {"translate":"7. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}
execute as @a if score @s core_player_score = 8 core_scoreboard_sort_rank run tellraw @a {"translate":"8. %s: %sd","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"core_player_score"}}]}