#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if block ~-9 ~8 ~-3 redstone_lamp[lit=true] if block ~14 ~10 ~-10 redstone_lamp[lit=true] if block ~10 ~9 ~10 redstone_lamp[lit=true] if block ~-14 ~5 ~9 redstone_lamp[lit=true] run execute at @s run function chamberescape:rooms/year/finish with entity @s data

#?