#loop
data modify storage mcmmt:core scoreboard.content set value {map_name:"/",round_count:0,game_count:0,miunte:0,second:0,score_display:"总游戏积分:",room_name:"Room 0",count_display:"剩余玩家数",max_round:-1}

execute store result storage mcmmt:core scoreboard.config.index int 1 run scoreboard players get i core_scoreboard_display_config
scoreboard players add i core_scoreboard_display_config 1
function core:scoreboard_display/__setup__/variables_set with storage mcmmt:core scoreboard.config
execute unless data storage mcmmt:core scoreboard.content.team run scoreboard players set i core_scoreboard_display_config 0
function core:scoreboard_display/__setup__/loop_body with storage mcmmt:core scoreboard.content
execute if data storage mcmmt:core scoreboard.content.team run function core:scoreboard_display/__setup__