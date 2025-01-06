#clone. Change the first two pos from the real map.此处修改克隆坐标
#eg. clone 1017 197 985 1047 227 1015 ~-15 ~-3 ~-15
#?

#must retain.用于重置reload触发和重置播报，无需修改。
$execute positioned ~-15 ~-3 ~-15 run spreadplayers ~15 ~15 0 3 true @a[dx=30,dy=30,dz=30,team=$(color)]
execute positioned ~-15 ~-2 ~-15 if entity @a[tag=Chamber_escape,dx=30,dz=30,dy=30] run function chamberescape:broadcast/restart with entity @s data
scoreboard players set @a room_reload 0