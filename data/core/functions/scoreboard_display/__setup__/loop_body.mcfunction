#scoreboard config
$team add $(team)
$team modify $(team) color $(color)
$team modify $(team) collisionRule never
$scoreboard objectives remove scoreboard_$(team)
$scoreboard objectives add scoreboard_$(team) dummy {"text":"MCMMT Season 1","color":"gold","bold":false}
$scoreboard players reset * scoreboard_$(team)
$scoreboard objectives modify scoreboard_$(team) numberformat blank
$scoreboard objectives modify scoreboard_$(team) displayautoupdate true
$scoreboard objectives setdisplay sidebar.team.$(color) scoreboard_$(team)

#scoreboard display initialization
$scoreboard players set 玩家数 scoreboard_$(team) -5
$scoreboard players set 占位2 scoreboard_$(team) -4
$scoreboard players set 队伍4 scoreboard_$(team) -3
$scoreboard players set 队伍3 scoreboard_$(team) -2
$scoreboard players set 队伍2 scoreboard_$(team) -1
$scoreboard players set 队伍1 scoreboard_$(team) 0
$scoreboard players set 游戏积分 scoreboard_$(team) 1
$scoreboard players set 占位 scoreboard_$(team) 3
$scoreboard players set 剩余时间 scoreboard_$(team) 4 
$scoreboard players set 当前回合 scoreboard_$(team) 5
$scoreboard players set 当前地图 scoreboard_$(team) 6
$scoreboard players set 游戏进度 scoreboard_$(team) 7
$scoreboard players display name 占位 scoreboard_$(team) [{"text":"  "}]
$scoreboard players display name 占位2 scoreboard_$(team) [{"text":"  "}]
$scoreboard players display name 游戏积分 scoreboard_$(team) {"text":"总游戏积分:","color":"aqua"}
#$scoreboard players set $(team) tgttos_sum_score 0