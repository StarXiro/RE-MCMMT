data remove storage mcmmt:core scoreboard.content.team
data remove storage mcmmt:core scoreboard.content.color
$data modify storage mcmmt:core scoreboard.content.team set from storage mcmmt:core config.teamlist[$(index)]
$data modify storage mcmmt:core scoreboard.content.color set from storage mcmmt:core config.teamcolor[$(index)]
