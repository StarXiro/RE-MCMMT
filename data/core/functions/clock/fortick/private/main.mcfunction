scoreboard players operation @s timer_minute = @s core_clock
scoreboard players operation @s timer_minute /= 1200 core_num
scoreboard players operation @s timer_second = @s core_clock
scoreboard players operation @s timer_second %= 1200 core_num
scoreboard players operation @s timer_second /= 20 core_num
scoreboard players operation @s timer_ms = @s core_clock
scoreboard players operation @s timer_ms %= 20 core_num
scoreboard players operation @s timer_ms *= 5 core_num