#must retain.开始播报与操作，无需修改
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:broadcast/start with entity @s data
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:rooms/$(room)/action with entity @s data
