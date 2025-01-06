execute store result storage mcmmt:chamberescape marker.i int 1 run scoreboard players get i chamberescape_index
function chamberescape:markers/private/i_get with storage mcmmt:chamberescape marker
scoreboard players add i chamberescape_index 1
execute if score i chamberescape_index matches ..8 run function chamberescape:markers/private/i_loop