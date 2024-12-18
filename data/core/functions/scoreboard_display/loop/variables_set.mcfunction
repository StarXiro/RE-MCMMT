#宏函数变量赋值
data remove storage mcmmt:core scoreboard.content.team
$data modify storage mcmmt:core scoreboard.content.team set from storage mcmmt:core config.teamlist[$(index)]
execute unless data storage mcmmt:core scoreboard.content.team run scoreboard players set i core_scoreboard_display_config 1
execute unless data storage mcmmt:core scoreboard.content.team run data modify storage mcmmt:core scoreboard.team set from storage mcmmt:core config.teamlist[0]