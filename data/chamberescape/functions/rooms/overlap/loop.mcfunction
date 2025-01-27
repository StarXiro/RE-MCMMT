#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if blocks ~-13 ~-7 ~-13 ~-2 ~-2 ~-2 ~-13 ~1 ~-13 all if blocks ~2 ~-7 ~2 ~13 ~-2 ~13 ~2 ~1 ~2 all run execute at @s run function chamberescape:rooms/overlap/finish with entity @s data
execute if block ~ ~1 ~ redstone_block run execute at @s run function chamberescape:rooms/overlap/finish with entity @s data
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] run data modify entity @s Item.tag.CanPlaceOn set value ["minecraft:red_wool"]
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] run data modify entity @s Item.tag.CanDestroy set value ["minecraft:red_wool"]
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}] run data modify entity @s Item.tag.CanPlaceOn set value ["minecraft:yellow_wool"]
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}] run data modify entity @s Item.tag.CanDestroy set value ["minecraft:yellow_wool"]
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] run data modify entity @s Item.tag.HideFlags set value 28
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}] run data modify entity @s Item.tag.HideFlags set value 28
#?