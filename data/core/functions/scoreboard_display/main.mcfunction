#execute store result storage mcmmt:core scoreboard.config.index int 1 run scoreboard players get i core_scoreboard_display_config
#scoreboard players add i core_scoreboard_display_config 1
scoreboard players reset all game_finish_count
scoreboard players operation all game_finish_count += @a[tag=player] game_finish_count
scoreboard players reset all core_player_count
scoreboard players set @a[tag=player] core_player_count 1
scoreboard players operation all core_player_count += @a[tag=player] core_player_count

execute store result storage mcmmt:core scoreboard.content.minute int 1 run scoreboard players get minute core_clock
execute store result storage mcmmt:core scoreboard.content.second int 1 run scoreboard players get second core_clock

#run 宏function
data modify storage mcmmt:core scoreboard.config.index set value 0
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 1
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 2
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 3
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 4
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 5
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 6
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content
data modify storage mcmmt:core scoreboard.config.index set value 7
function core:scoreboard_display/loop/variables_set with storage mcmmt:core scoreboard.config
function core:scoreboard_display/loop/loop_body with storage mcmmt:core scoreboard.content
function core:scoreboard_display/loop/for_team with storage mcmmt:core scoreboard.content

function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main
function core:scoreboard_display/score_update/main

schedule function core:scoreboard_display/main 1t