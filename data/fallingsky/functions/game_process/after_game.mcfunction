#stop block generate
scoreboard players set in_game core_clock 0
kill @e[type=falling_block]

#title
title @a clear
title @a times 5t 3s 5t
title @a title {"text":"回合结束!","color":"yellow"}

#scoreboard update
scoreboard players set in_game process_ctrl 0
scoreboard players set after_game process_ctrl 1
scoreboard players set before_game process_ctrl 0
scoreboard players set @a[tag=Falling_sky] game_finish_count 1

#score
execute unless score all game_finish_count matches 0 run function fallingsky:score_action/alive
execute unless score all game_finish_count matches 0 run function fallingsky:announcements/round_end/alive

#go next
execute if score round_count process_ctrl matches 0..2 run schedule function fallingsky:game_process/before_game 200t

execute unless score round_count process_ctrl matches 0..2 run function fallingsky:game_process/end_game