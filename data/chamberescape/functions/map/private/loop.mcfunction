$execute if entity @a[tag=in_room$(num),team=$(color),scores={room_info=1..}] run function chamberescape:rooms/$(room)/info with entity @s data
$execute if entity @a[tag=in_room$(num),team=$(color),scores={room_reload=1..}] run execute at @s run function chamberescape:rooms/$(room)/clone with entity @s data
$execute at @s run function chamberescape:rooms/$(room)/loop with entity @s data