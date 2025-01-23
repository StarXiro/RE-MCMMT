execute positioned ~-15 ~-2 ~-15 run kill @e[dx=30,dz=30,dy=30,type=!player,type=!marker]

place template chamber:windows ~-15 ~-4 ~-15

$execute if entity @a[tag=in_room$(num),team=$(color)] run fill ~15 ~12 ~15 ~-15 ~13 ~-15 light_blue_stained_glass replace gray_stained_glass 
$spreadplayers ~ ~ 0 1 true @a[dx=30,dy=30,dz=30,team=$(color)]
$execute if entity @a[tag=in_room$(num),team=$(color)] run function chamberescape:broadcast/restart with entity @s data
scoreboard players set @a room_reload 0