#name update
data remove storage mcmmt:core utils.text_display.rank
data remove storage mcmmt:core utils.text_display.color
$data modify storage mcmmt:core utils.text_display.color set from storage mcmmt:core utils.text_display.colorlist[$(index)]
execute unless data storage mcmmt:core utils.text_display.color run data modify storage mcmmt:core utils.text_display.color set value "white"
$execute as $(objective) if score @s $(scoreboardname) = $(index) core_scoreboard_sort_rank run function core:text_display/private/variable_get2 with storage mcmmt:core utils.text_display
$execute if score i core_text_display_config matches ..$(num) run function core:text_display/private/loop
