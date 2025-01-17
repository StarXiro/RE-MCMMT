execute as @e[tag=chamberescape_marker] at @s run forceload add ~-18 ~-18 ~18 ~18
execute as @e[tag=chamberescape_marker] run function chamberescape:map/private/generate_room with entity @s data
execute as @e[tag=chamberescape_marker,tag=room1] at @s run function chamberescape:map/private/wall_west with entity @s data
execute as @e[tag=chamberescape_marker,tag=room4] at @s run function chamberescape:map/private/wall_west with entity @s data
execute as @e[tag=chamberescape_marker,tag=room7] at @s run function chamberescape:map/private/wall_west with entity @s data
execute as @e[tag=chamberescape_marker,tag=room3] at @s run function chamberescape:map/private/wall_east with entity @s data
execute as @e[tag=chamberescape_marker,tag=room6] at @s run function chamberescape:map/private/wall_east with entity @s data
execute as @e[tag=chamberescape_marker,tag=room9] at @s run function chamberescape:map/private/wall_east with entity @s data
execute as @e[tag=chamberescape_marker,tag=room1] at @s run function chamberescape:map/private/wall_south with entity @s data
execute as @e[tag=chamberescape_marker,tag=room2] at @s run function chamberescape:map/private/wall_south with entity @s data
execute as @e[tag=chamberescape_marker,tag=room3] at @s run function chamberescape:map/private/wall_south with entity @s data
execute as @e[tag=chamberescape_marker,tag=room7] at @s run function chamberescape:map/private/wall_north with entity @s data
execute as @e[tag=chamberescape_marker,tag=room8] at @s run function chamberescape:map/private/wall_north with entity @s data
execute as @e[tag=chamberescape_marker,tag=room9] at @s run function chamberescape:map/private/wall_north with entity @s data
execute as @e[tag=chamberescape_marker,tag=room8] at @s run function chamberescape:map/private/finish_room with entity @s data
execute as @e[tag=chamberescape_marker,tag=room2] at @s run function chamberescape:map/private/start_room with entity @s data
execute as @e[tag=chamberescape_marker] at @s run forceload remove ~-18 ~-18 ~18 ~18