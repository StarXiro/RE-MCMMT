#game_count never
$scoreboard players display name 游戏进度 scoreboard_$(team) [{"text":"游戏进度: ","color":"aqua"},{"text":"$(game_count)","color":"white"},{"text":"/8","color":"white"}]

#map_name never
$scoreboard players display name 当前地图 scoreboard_$(team) [{"text":"当前地图: ","color":"aqua"},{"color":"white","text":"$(map_name)"}]

#player_finished with sum
$execute if score player_mode core_scoreboard_display_config matches 1 run scoreboard players display name 玩家数 scoreboard_$(team) [{"text":"$(count_display): ","color":"green"},{"text":"$(finish_count)","color":"green"},{"text":"/","color":"green"},{"text":"$(player_count)","color":"green"}]
$execute if score teamscore_mode core_scoreboard_display_config matches 1 run scoreboard players display name 玩家数 scoreboard_$(team) [{"text":"已获得积分: ","color":"yellow"},{"text":"$(score)","color":"yellow"}]

#list_name
$scoreboard players display name 游戏积分 scoreboard_$(team) {"text":"$(score_display)","color":"aqua"}


#round_count
#defult
$execute if score round_mode core_scoreboard_display_config matches 1 if data storage mcmmt:core scoreboard.content.max_round run scoreboard players display name 当前回合 scoreboard_$(team) [{"text":"当前回合: ","color":"aqua"},{"text":"$(round_count)","color":"white"},{"text":"/$(max_round)","color":"white"}]
$execute if score round_mode core_scoreboard_display_config matches 1 if data storage mcmmt:core {scoreboard:{content:{max_round:-1}}} run scoreboard players display name 当前回合 scoreboard_$(team) [{"text":" ","color":"aqua"}]

#room_mode
$execute if score room_mode core_scoreboard_display_config matches 1 run scoreboard players reset 当前回合 scoreboard_$(team) 
$execute unless score room_mode core_scoreboard_display_config matches 1 run scoreboard players set 当前回合 scoreboard_$(team) 5


#time module - for second and for minutes - for >10s and <10s
#display fix !!!/ wont fix
$execute if score before_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score before_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score in_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score in_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"回合结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score after_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"下一轮: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score after_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"下一轮: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score end_game process_ctrl matches 1 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"返回大厅: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score end_game process_ctrl matches 1 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"返回大厅: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score in_game process_ctrl matches 2 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"游戏结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score in_game process_ctrl matches 2 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"游戏结束: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score before_game process_ctrl matches 2 run execute if score second core_clock matches 0..9 run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"游戏开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":0","color":"white"},{"color":"white","text":"$(second)"}]
$execute if score before_game process_ctrl matches 2 run execute if score second core_clock matches 10.. run scoreboard players display name 剩余时间 scoreboard_$(team) [{"text":"游戏开始: ","color":"red"},{"color":"white","text":"$(minute)"},{"text":":","color":"white"},{"color":"white","text":"$(second)"}]