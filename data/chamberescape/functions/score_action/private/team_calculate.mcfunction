$scoreboard players set $(name) score_temp 0
$scoreboard players operation $(name) score_temp = $(name) game_store_score
$scoreboard players operation $(name) score_gap = $(name) game_store_score
$scoreboard players operation $(name) score_temp /= $(name) game_player_count
$execute if score $(name) game_finish_count matches 0.. run scoreboard players operation $(name) score_temp *= $(name) game_finish_count
$execute if score $(name) game_finish_count matches ..-1 run scoreboard players operation $(name) score_temp *= $(name) game_player_count
$scoreboard players operation $(name) score_gap -= $(name) score_temp
$scoreboard players operation $(name) score_temp /= $(name) game_player_count
$scoreboard players operation @a[team=$(name),tag=Chamber_escape] game_player_score += $(name) score_temp
$scoreboard players set $(name) game_store_score 0
