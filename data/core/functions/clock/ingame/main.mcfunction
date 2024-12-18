scoreboard players operation minute core_clock = countdown core_clock
#scoreboard players operation minute core_clock += 1 core_num
scoreboard players operation minute core_clock /= 60 core_num
scoreboard players operation second core_clock = countdown core_clock
#scoreboard players operation second core_clock += 1 core_num
scoreboard players operation second core_clock %= 60 core_num
scoreboard players remove countdown core_clock 1
schedule function core:clock/ingame/main 20t