#countdown init
scoreboard players set countdown core_clock 600
scoreboard players set in_game core_ctrl 1

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 1
scoreboard players set current_score score_temp 0

#loop
schedule function chamberescape:game_process/end_game 12000t