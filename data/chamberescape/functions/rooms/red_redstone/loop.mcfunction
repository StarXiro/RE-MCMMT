#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if block ~12 ~0 ~-3 redstone_lamp[lit=true] run execute at @s run function chamberescape:rooms/red_redstone/finish with entity @s data
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}}] run data modify entity @s Item.tag.CanPlaceOn set value ["minecraft:polished_andesite","andesite","redstone_lamp"]
#?

