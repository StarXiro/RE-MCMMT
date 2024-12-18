#name update
data remove storage mcmmt:core utils.marker_generate.name
data remove storage mcmmt:core utils.marker_generate.color
data remove storage mcmmt:core utils.marker_generate.displayname
$data modify storage mcmmt:core utils.marker_generate.name set from storage mcmmt:core utils.marker_generate.namelist[$(index)]
$data modify storage mcmmt:core utils.marker_generate.color set from storage mcmmt:core utils.marker_generate.colorlist[$(index)]
$data modify storage mcmmt:core utils.marker_generate.displayname set from storage mcmmt:core utils.marker_generate.displaynamelist[$(index)]
execute unless data storage mcmmt:core utils.marker_generate.displayname run data modify storage mcmmt:core utils.marker_generate.displayname set from storage mcmmt:core utils.marker_generate.name
execute unless data storage mcmmt:core utils.marker_generate.color run data modify storage mcmmt:core utils.marker_generate.color set value "white"