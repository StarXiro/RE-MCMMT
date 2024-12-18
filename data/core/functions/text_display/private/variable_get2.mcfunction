$tag @s add rank$(index)
$data modify storage mcmmt:core utils.text_display.rank set value $(index)
execute store result storage mcmmt:core utils.text_display.pos float 0.001 run scoreboard players get pos core_text_display_config
$execute positioned $(top_pos) run function core:text_display/private/generate with storage mcmmt:core utils.text_display
$tag @s remove rank$(index)