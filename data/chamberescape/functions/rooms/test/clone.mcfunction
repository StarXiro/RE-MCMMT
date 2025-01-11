#forceload add 1017 985 1047 1015
#clone 1017 197 985 1047 227 1015 ~-15 ~-3 ~-15
#forceload remove 1017 985 1047 1015

place template chamber:test ~-15 ~-4 ~-15
$execute if entity @a[tag=in_room$(num),team=$(color)] run fill ~15 ~12 ~15 ~-15 ~13 ~-15 light_blue_stained_glass replace gray_stained_glass 
$spreadplayers ~ ~ 0 1 true @a[dx=30,dy=30,dz=30,team=$(color)]
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:broadcast/restart with entity @s data
scoreboard players set @a room_reload 0