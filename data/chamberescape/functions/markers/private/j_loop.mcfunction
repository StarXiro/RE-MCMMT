execute store result storage mcmmt:chamberescape marker.j int 1 run scoreboard players get j chamberescape_index
function chamberescape:markers/private/j_get with storage mcmmt:chamberescape marker
scoreboard players add j chamberescape_index 1
execute if score j chamberescape_index matches ..9 run function chamberescape:markers/private/j_loop
scoreboard players set j chamberescape_index 1