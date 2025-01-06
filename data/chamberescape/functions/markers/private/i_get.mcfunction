$data modify storage mcmmt:chamberescape marker.color set from storage mcmmt:chamberescape teamlist[$(i)]
$data modify storage mcmmt:chamberescape marker.name set from storage mcmmt:chamberescape namelist[$(i)]
$data modify storage mcmmt:chamberescape marker.display_color set from storage mcmmt:chamberescape colorlist[$(i)]
$data modify storage mcmmt:chamberescape marker.centerx set value $(i)$(posx)
$data modify storage mcmmt:chamberescape marker.centerz set value $(i)$(posz)
scoreboard players set j chamberescape_index 1
function chamberescape:markers/private/j_loop