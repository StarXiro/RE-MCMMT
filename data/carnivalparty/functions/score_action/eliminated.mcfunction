#score
scoreboard players operation @a[tag=in_game,tag=Falling_sky] game_player_score += 6 core_num

#rank_bonus
execute if score all game_finish_count matches 4 run scoreboard players add @s game_player_score 16
execute if score all game_finish_count matches 3 run scoreboard players add @s game_player_score 36
execute if score all game_finish_count matches 2 run scoreboard players add @s game_player_score 60
execute if score all game_finish_count matches 1 run scoreboard players add @s game_player_score 90

#update
schedule function fallingsky:score_action/update 1t