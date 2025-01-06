execute as @e[tag=chamberescape_marker,tag=!started] run function chamberescape:map/private/start with entity @s data
execute as @e[tag=chamberescape_marker,tag=started,tag=!finished] at @s run function chamberescape:map/private/loop with entity @s data
scoreboard players set @a room_info 0
scoreboard players set @a room_reload 0


execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] run data merge entity @s {PickupDelay:0}

schedule function chamberescape:map/loop 1t