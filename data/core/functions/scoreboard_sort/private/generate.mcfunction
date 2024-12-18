$scoreboard players set $(loop_cnt) core_scoreboard_sort_rank $(maxscore)
scoreboard players reset @s core_scoreboard_sort_temp
$scoreboard players set @s core_scoreboard_sort_prank $(loop_cnt)