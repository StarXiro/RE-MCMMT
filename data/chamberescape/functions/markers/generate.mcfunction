scoreboard players set i chamberescape_index 1
scoreboard players set j chamberescape_index 1
kill @e[tag=chamberescape_marker]
execute if score logon mainctrl matches 1 if entity @e[tag=chamberescape_marker] run tellraw @a[tag=Dev] [{"text":"[✘] ","color":"red"},{"text":"Failed to generate marker.","color":"gray"}]
execute if score logon mainctrl matches 1 unless entity @e[tag=chamberescape_marker] run tellraw @a[tag=Dev] [{"text":"[✔] ","color":"green"},{"text":"Successfully generated 72 markers.","color":"gray"}]
execute unless entity @e[tag=chamberescape_marker] run function chamberescape:markers/private/i_loop
