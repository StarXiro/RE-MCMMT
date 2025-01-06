#must retain.开始播报与操作，无需修改
$execute positioned ~-15 ~-2 ~-15 if entity @a[tag=Chamber_escape,dx=30,dz=30,dy=30,team=$(color)] run function chamberescape:broadcast/start with entity @s data
$execute positioned ~-15 ~-2 ~-15 if entity @a[tag=Chamber_escape,dx=30,dz=30,dy=30,team=$(color)] run function chamberescape:rooms/test/action with entity @s data
