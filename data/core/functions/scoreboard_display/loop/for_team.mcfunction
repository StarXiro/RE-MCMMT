#game_count
$scoreboard players display name 游戏进度 scoreboard_$(team) [{"text":"游戏进度: ","color":"aqua"},{"text":"$(game_count)","color":"white"},{"text":"/8","color":"white"}]

#map_name
$scoreboard players display name 当前地图 scoreboard_$(team) [{"text":"当前地图: ","color":"aqua"},{"color":"white","text":"$(map_name)"}]

#player_finished with sum
$scoreboard players display name 玩家数 scoreboard_$(team) [{"text":"$(count_display): ","color":"green"},{"text":"$(finish_count)","color":"green"},{"text":"/","color":"green"},{"text":"$(player_count)","color":"green"}]

#round_count
$execute if data storage mcmmt:core scoreboard.content.max_round run scoreboard players display name 当前回合 scoreboard_$(team) [{"text":"当前回合: ","color":"aqua"},{"text":"$(round_count)","color":"white"},{"text":"/$(max_round)","color":"white"}]

$execute unless data storage mcmmt:core scoreboard.content.max_round run scoreboard players display name 当前回合 scoreboard_$(team) [{"text":" "}]

#time module - for second and for minutes - for >10s and <10s
#display fix !!!
$execute if score before_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score before_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score in_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score in_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score after_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"下一轮: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score after_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"下一轮: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score end_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"返回大厅: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score end_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"返回大厅: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]