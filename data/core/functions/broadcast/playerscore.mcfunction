tellraw @a ""
tellraw @a "本游戏最佳玩家: "
data modify storage mcmmt:core utils.scoreboard_sort.config.scoreboardname set value "game_player_score"
data modify storage mcmmt:core utils.scoreboard_sort.config.loop_max set value 32
function core:scoreboard_sort/main with storage mcmmt:core utils.scoreboard_sort.config
execute as @a[tag=player] if score @s game_player_score = 1 core_scoreboard_sort_rank run tellraw @a {"translate":"1. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_player_score"}}]}
execute as @a[tag=player] if score @s game_player_score = 2 core_scoreboard_sort_rank run tellraw @a {"translate":"2. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_player_score"}}]}
execute as @a[tag=player] if score @s game_player_score = 3 core_scoreboard_sort_rank run tellraw @a {"translate":"3. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_player_score"}}]}
execute as @a[tag=player] if score @s game_player_score = 4 core_scoreboard_sort_rank run tellraw @a {"translate":"4. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_player_score"}}]}
execute as @a[tag=player] if score @s game_player_score = 5 core_scoreboard_sort_rank run tellraw @a {"translate":"5. %s: %s","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"game_player_score"}}]}
tellraw @a ""
execute as @a[tag=player] run tellraw @s {"translate":"%s. %s: %s","with":[{"score":{"name":"@s","objective":"core_scoreboard_sort_prank"}},{"selector":"@s"},{"score":{"name":"@s","objective":"game_player_score"}}]}
tellraw @a ""