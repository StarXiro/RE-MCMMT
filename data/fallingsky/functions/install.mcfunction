#
function fallingsky:pause

#scoreboard init
scoreboard objectives add fallingsky_ctrl dummy

#data init
data modify storage mcmmt:fallingsky pos set value [-300,100,-300]
data modify storage mcmmt:core scoreboard.content.map_name set value "Origin"
data modify storage mcmmt:core scoreboard.content.score_display set value "本游戏积分:"
data modify storage mcmmt:fallingsky death.messagelist set value ["","被天上的方块砸扁了。","似乎没有好好看路。","脚下一滑。","淹没在方块中。","同学，你怎么似了?","没有在b站关注星白。","在电脑屏幕前打盹。"]
data modify storage mcmmt:core scoreboard.content.count_display set value "剩余玩家数"
data modify storage mcmmt:core scoreboard.content.max_round set value 3

#scoreboard display init
scoreboard players set player_mode core_scoreboard_display_config 1
scoreboard players reset * process_ctrl
scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set player_mode core_scoreboard_display_config 1
#clock start
execute unless score installed fallingsky_ctrl matches 1 run scoreboard players set gameclock core_clock 0
function core:clock/forgame/main

#ouput info
data modify storage mcmmt:fallingsky info set value {"game_name":"Falling Sky","author":"StarXiro","version":"0.0.0","update_time":"12/11/2024","run_time":"300"}
execute unless score installed fallingsky_ctrl matches -2147483648..2147483647 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/install_info with storage mcmmt:fallingsky info
execute if score installed fallingsky_ctrl matches 1 as @s run function core:announcements/install_error
scoreboard players set installed fallingsky_ctrl 1
