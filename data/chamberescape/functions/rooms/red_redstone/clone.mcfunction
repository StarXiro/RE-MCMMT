#clone. Change the first two pos from the real map.此处修改克隆坐标
#eg. clone 1017 197 985 1047 227 1015 ~-15 ~-3 ~-15
#forceload add 985 985 1015 1015
#clone 985 197 985 1015 215 1015 ~-15 ~-3 ~-15
#forceload remove 985 985 1015 1015

execute positioned ~-14 ~ ~-14 run kill @e[type=item,dx=28,dy=28,dz=28]
$clear @a[tag=in_room$(num),team=$(color)] redstone

place template chamber:red_redstone ~-15 ~-4 ~-15
$execute if entity @a[tag=in_room$(num),team=$(color)] run fill ~15 ~12 ~15 ~-15 ~13 ~-15 light_blue_stained_glass replace gray_stained_glass 
#must retain.用于重置reload触发和重置播报，无需修改。
$spreadplayers ~ ~ 0 1 true @a[tag=in_room$(num),team=$(color)] 
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:broadcast/restart with entity @s data
scoreboard players set @a room_reload 0