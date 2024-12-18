scoreboard players set i core_text_display_config 1
scoreboard players set pos core_text_display_config 375
data modify storage mcmmt:core utils.marker_generate.scoreboardname set from storage mcmmt:core utils.text_display.scoreboardname
data modify storage mcmmt:core utils.marker_generate.namelist set from storage mcmmt:core config.teamlist
data modify storage mcmmt:core utils.marker_generate.displaynamelist set from storage mcmmt:core config.teamlist2
data modify storage mcmmt:core utils.marker_generate.colorlist set from storage mcmmt:core config.teamcolor
function core:marker_generate/main 
data modify storage mcmmt:core utils.scoreboard_sort.config.scoreboardname set from storage mcmmt:core utils.text_display.scoreboardname
data modify storage mcmmt:core utils.scoreboard_sort.config.loop_max set from storage mcmmt:core utils.text_display.num
function core:scoreboard_sort/main with storage mcmmt:core utils.scoreboard_sort.config
function core:text_display/private/kill with storage mcmmt:core utils.text_display
function core:text_display/private/loop