execute as @e[tag=chamberescape_marker] run function chamberescape:map/private/generate_room with entity @s data
execute as @e[tag=chamberescape_marker,tag=room8] at @s run function chamberescape:map/private/finish_room with entity @s data
execute as @e[tag=chamberescape_marker,tag=room2] at @s run function chamberescape:map/private/start_room with entity @s data