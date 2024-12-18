#data initialize
data modify storage mcmmt:core utils.scoreboard_sort.config set value {score: 0, scoreboardname: "core_scoreboard_sort_temp",loop_max: 32,loop_cnt: 1}

#scoreboard initialize
scoreboard objectives add core_scoreboard_sort_temp dummy
scoreboard objectives add core_scoreboard_sort_rank dummy
scoreboard objectives add core_scoreboard_sort_prank dummy
scoreboard objectives add core_scoreboard_sort_sort dummy
execute unless score installed core_ctrl matches -2147483648..2147483647 if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"✔ ","color":"green"},{"text":"Successfully installed util : Scoreboard Sort.","color":"gray"}]