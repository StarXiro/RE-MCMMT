#playercount set
$scoreboard players reset $(team) core_player_count
$scoreboard players operation $(team) core_player_count += @a[team=$(team)] core_player_count

#finishcount set
$scoreboard players reset $(team) game_finish_count
$scoreboard players operation $(team) game_finish_count += @a[team=$(team)] game_finish_count

#score set
$scoreboard players set $(team) game_team_score 0
$scoreboard players operation $(team) game_team_score += @a[team=$(team)] game_player_score

#get scoreboard marks for storage
execute store result storage mcmmt:core scoreboard.content.game_count int 1 run scoreboard players get game_count core_game_config
execute store result storage mcmmt:core scoreboard.content.round_count int 1 run scoreboard players get round_count process_ctrl
execute store result storage mcmmt:core scoreboard.content.minute int 1 run scoreboard players get minute core_clock
execute store result storage mcmmt:core scoreboard.content.second int 1 run scoreboard players get second core_clock
execute store result storage mcmmt:core scoreboard.content.player_count int 1 run scoreboard players get all core_player_count
execute store result storage mcmmt:core scoreboard.content.finish_count int 1 run scoreboard players get all game_finish_count
execute unless data storage mcmmt:core scoreboard.content.round_count run data modify storage mcmmt:core scoreboard.content.round_count set value 0
execute unless data storage mcmmt:core scoreboard.content.minute run data modify storage mcmmt:core scoreboard.content.minute set value 0
execute unless data storage mcmmt:core scoreboard.content.second run data modify storage mcmmt:core scoreboard.content.second set value 0
execute unless data storage mcmmt:core scoreboard.content.finish_count run data modify storage mcmmt:core scoreboard.content.finishi_count set value 0
execute unless data storage mcmmt:core scoreboard.content.game_count run data modify storage mcmmt:core scoreboard.content.game_count set value 0

