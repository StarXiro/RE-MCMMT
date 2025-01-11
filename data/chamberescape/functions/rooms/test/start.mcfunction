
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:broadcast/start with entity @s data
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:rooms/$(room)/action with entity @s data
