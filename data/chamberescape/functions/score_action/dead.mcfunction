scoreboard players operation @s score_temp = @s game_player_score
scoreboard players operation @s score_temp *= 4 core_num
scoreboard players operation @s score_temp /= 5 core_num
scoreboard players operation @s score_gap = @s game_player_score
scoreboard players operation @s score_gap -= @s score_temp
scoreboard players operation @s game_player_score = @s score_temp