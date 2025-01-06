scoreboard players set i chamberescape_index 1
scoreboard players set j chamberescape_index 1
kill @e[tag=chamberescape_marker]
function chamberescape:markers/private/i_loop
execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"[✔] ","color":"green"},{"text":"Successfully generated 72 markers.","color":"gray"}]