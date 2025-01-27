#pause
function snowballfight:pause

#scoreboard init
scoreboard objectives add snowballfight_ctrl dummy

#data init
data modify storage mcmmt:core scoreboard.content.map_name set value "行星发动机"
data modify storage mcmmt:core scoreboard.content.score_display set value "队伍染色羊毛得分: "
data modify storage mcmmt:core scoreboard.content.max_round set value 1

#map generate
function snowballfight:map/reload

#scoreboard display init
scoreboard players set teamscore_mode core_scoreboard_display_config 1
scoreboard players set round_mode core_scoreboard_display_config 0
scoreboard players set room_mode core_scoreboard_display_config 1
scoreboard players reset * process_ctrl

#clock start
execute unless score installed snowballfight_ctrl matches 1 run scoreboard players set gameclock core_clock 0
function core:clock/forgame/main

#ouput info
data modify storage mcmmt:snowballfight info set value {"game_name":"Snowball_fight","author":"StarXiro","version":"0.0.0","update_time":"01/26/2025","run_time":"300"}
execute unless score installed snowballfight_ctrl matches -2147483648..2147483647 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/install_info with storage mcmmt:snowballfight info
execute if score installed snowballfight_ctrl matches 1 as @s run function core:announcements/install_error
scoreboard players set installed snowballfight_ctrl 1

scoreboard objectives add wool_temp dummy
scoreboard objectives add wool_count1 dummy
scoreboard objectives add wool_count2 dummy
scoreboard objectives add wool_count3 dummy
scoreboard players reset * wool_count1
scoreboard players reset * wool_count2
scoreboard players reset * wool_count3
