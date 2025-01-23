execute as @e[tag=chamberescape_marker] at @s run function chamberescape:map/private/room_tag with entity @s data
execute as @e[tag=chamberescape_marker,tag=!started] run function chamberescape:map/private/start with entity @s data
execute as @e[tag=chamberescape_marker,tag=started,tag=!finished] at @s run function chamberescape:map/private/loop with entity @s data
execute as @e[tag=chamberescape_marker,tag=started,tag=!finished] run tag @s add counting
execute as @a[tag=Chamber_escape] at @s if block ~ ~-2 ~ bedrock if block ~ ~-1 ~ amethyst_block run function chamberescape:map/private/on_board
execute as @a[tag=Chamber_escape] at @s if block ~ ~-3 ~ bedrock if block ~ ~-2 ~ amethyst_block run function chamberescape:map/private/on_board
execute as @a[tag=Chamber_escape] at @s if block ~ ~1 ~-0.300001 end_gateway run function chamberescape:map/private/escape
execute positioned 0 0 0 as @e[tag=generated,sort=nearest,limit=8] run function chamberescape:map/private/complete_check with entity @s data
execute positioned 0 0 0 as @e[tag=generated,sort=nearest,limit=8] run function chamberescape:death_action/check with entity @s data
scoreboard players set @a room_info 0
scoreboard players set @a room_reload 0

#no drop
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}] run data merge entity @s {PickupDelay:0}

schedule function chamberescape:map/loop 1t