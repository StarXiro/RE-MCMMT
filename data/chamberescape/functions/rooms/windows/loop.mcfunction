#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if block ~8 ~6 ~8 redstone_lamp[lit=true] if block ~-8 ~7 ~8 redstone_lamp[lit=true] if block ~-7 ~8 ~-7 redstone_lamp[lit=true] if block ~8 ~7 ~-8 redstone_lamp[lit=true] run execute at @s run function chamberescape:rooms/windows/finish with entity @s data


#?