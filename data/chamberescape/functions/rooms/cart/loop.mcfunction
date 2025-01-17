#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if block ~8 ~4 ~-6 redstone_lamp[lit=true] if block ~3 ~1 ~1 redstone_lamp[lit=true] if block ~2 ~7 ~4 redstone_lamp[lit=true] if block ~-13 ~1 ~-3 redstone_lamp[lit=true] run execute at @s run function chamberescape:rooms/cart/finish with entity @s data
#?

