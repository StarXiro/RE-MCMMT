tellraw @a ""
tellraw @a "本回合队伍得分: "
data modify storage mcmmt:core utils.marker_generate.scoreboardname set value "game_team_score"
data modify storage mcmmt:core utils.marker_generate.namelist set from storage mcmmt:core config.teamlist
data modify storage mcmmt:core utils.marker_generate.displaynamelist set from storage mcmmt:core config.teamlist2
data modify storage mcmmt:core utils.marker_generate.colorlist set from storage mcmmt:core config.teamcolor
function core:marker_generate/main
data modify storage mcmmt:core utils.scoreboard_sort.config.scoreboardname set value "game_team_score"
data modify storage mcmmt:core utils.scoreboard_sort.config.loop_max set value 8
function core:scoreboard_sort/main with storage mcmmt:core utils.scoreboard_sort.config

execute as @e[type=marker,sort=nearest] if score @s game_team_score = 1 core_scoreboard_sort_rank run tellraw @a {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 2 core_scoreboard_sort_rank run tellraw @a {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 3 core_scoreboard_sort_rank run tellraw @a {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 4 core_scoreboard_sort_rank run tellraw @a {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 5 core_scoreboard_sort_rank run tellraw @a {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 6 core_scoreboard_sort_rank run tellraw @a {"translate":"6. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 7 core_scoreboard_sort_rank run tellraw @a {"translate":"7. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}
execute as @e[type=marker,sort=nearest] if score @s game_team_score = 8 core_scoreboard_sort_rank run tellraw @a {"translate":"8. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_team_score"}}]}