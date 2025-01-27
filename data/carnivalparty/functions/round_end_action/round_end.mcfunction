#schedule clear
schedule clear fallingsky:block_generator/100
schedule clear fallingsky:block_generator/125
schedule clear fallingsky:block_generator/150
schedule clear fallingsky:block_generator/200

scoreboard players set @a[tag=Falling_sky] game_finish_count 1

#info 
tellraw @a {"text":"回合结束! 本回合没有人活到最后。","color":"gray"}

#schedule
scoreboard players set countdown core_clock 30
execute if score in_game process_ctrl matches 1 run function fallingsky:game_process/after_game