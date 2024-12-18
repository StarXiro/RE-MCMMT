#data initialize
data remove storage mcmmt:core utils.scoreboard_sort.config

#scoreboard initialize
scoreboard objectives remove core_scoreboard_sort_temp
scoreboard objectives remove core_scoreboard_sort_rank
scoreboard objectives remove core_scoreboard_sort_prank
scoreboard objectives remove core_scoreboard_sort_sort
execute if score installed core_ctrl matches 1 if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"✔ ","color":"green"},{"text":"Successfully uninstalled util : Scoreboard Sort.","color":"gray"}]