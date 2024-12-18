#countdown init
scoreboard players set countdown core_clock 179
scoreboard players set in_game core_ctrl 1
scoreboard players add round_count process_ctrl 1

#scoreboard update
scoreboard players set after_game process_ctrl 0
scoreboard players set before_game process_ctrl 0
scoreboard players set in_game process_ctrl 1
scoreboard players set current_score score_temp 0
scoreboard players set @a[tag=Falling_sky] game_finish_count 1

#tag
tag @a[tag=player,tag=Falling_sky] add in_game

#effect
effect clear @a[tag=Falling_sky] instant_health

#block summon
function fallingsky:block_generator/main
function fallingsky:loop_actions/death_justice