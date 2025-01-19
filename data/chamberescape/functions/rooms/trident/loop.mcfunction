#Type your check for finish here.此处填写结束判据或者其他需要每tick执行的操作。
#eg.execute if block ~ ~3 ~ diamond_block run execute at @s run function chamberescape:rooms/test/finish with entity @s data
execute if block ~-14 ~10 ~13 redstone_lamp[lit=true] run execute at @s run function chamberescape:rooms/trident/finish with entity @s data
execute positioned ~-14 ~ ~-14 run kill @e[nbt={Item:{id:"minecraft:trident"}},type=item,dx=28,dy=28,dz=28]
$item replace entity @a[tag=in_room$(num),team=$(color)] hotbar.0 with trident{Enchantments:[{id:"minecraft:riptide",lvl:1}],display:{Name:'{"text":"戟把矛","italic":false,"color":"aqua"}'}}
#?

