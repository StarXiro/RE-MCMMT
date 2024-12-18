execute store result storage mcmmt:core utils.marker_generate.index int 1 run scoreboard players get i core_marker_generate
scoreboard players add i core_marker_generate 1
function core:marker_generate/private/variable_get with storage mcmmt:core utils.marker_generate
execute if data storage mcmmt:core utils.marker_generate.name run function core:marker_generate/private/loop_body with storage mcmmt:core utils.marker_generate
execute if data storage mcmmt:core utils.marker_generate.name run function core:marker_generate/private/loop