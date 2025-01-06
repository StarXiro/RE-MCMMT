#scoreb init
scoreboard objectives add core_loop dummy
scoreboard objectives add core_ctrl dummy
scoreboard objectives add core_clock dummy
scoreboard objectives add core_scoreboard_display_config dummy
scoreboard objectives add player_count dummy
scoreboard objectives add game_player_count dummy
scoreboard objectives add game_finish_count dummy
scoreboard objectives add mainctrl dummy
scoreboard objectives add process_ctrl dummy
scoreboard objectives add current_game dummy
scoreboard objectives add death_count deathCount
scoreboard objectives add score_temp dummy
scoreboard objectives add game_player_score dummy
scoreboard objectives add core_index dummy
scoreboard objectives add game_team_score dummy
scoreboard objectives add core_team_list dummy
scoreboard objectives add personalscore trigger
scoreboard objectives add core_player_score dummy
scoreboard objectives add core_team_score dummy
scoreboard objectives add game_room_finish dummy
scoreboard objectives add game_store_score dummy
scoreboard objectives add room_player_count dummy

#scoreb init part2
scoreboard players set @a[tag=player] core_player_score 0
scoreboard players set game_count core_game_config 0
scoreboard players reset * core_team_score
scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set round_mode core_scoreboard_display_config 0
scoreboard players set room_mode core_scoreboard_display_config 1
scoreboard players set player_mode core_scoreboard_display_config 1

#data init
data modify storage mcmmt:core config.teamlist set value ["red","orange","yellow","lime","green","blue","aqua","pink"]
data modify storage mcmmt:core config.teamlist2 set value ["绯红","橘橙","鹅黄","亮绿","深绿","花青","水蓝","嫣红"]
data modify storage mcmmt:core config.teamcolor set value ["red","gold","yellow","green","dark_green","blue","aqua","light_purple"]
data modify storage mcmmt:core config.team_data set value {}

#forceload
forceload add 0 0

#team init
#和scoreboard init 放在一起了

#gamerule init
gamerule showDeathMessages false
gamerule commandModificationBlockLimit 262144
gamerule keepInventory true
gamerule announceAdvancements false

#utils init
function core:marker_generate/__setup__
function core:scoreboard_sort/__setup__
function core:num/__setup__
function core:text_display/__setup__
function core:scoreboard_display/__setup__

#loop
function core:loop_actions/trigger
function core:scoreboard_display/main

#clock start
execute unless score installed core_ctrl matches -2147483648..2147483647 run scoreboard players set coreclock core_clock 0
function core:clock/forcore/main

#scoreboard update
data modify storage mcmmt:core scoreboard.content.score_display set value "当前总积分排名: "
data modify storage mcmmt:core scoreboard.content.count_display set value "在线玩家数"
function lobby:score_action/update

#ouput info
data modify storage mcmmt:core info set value {"game_name":"MCMMT Core","author":"StarXiro","version":"0.0.0","update_time":"12/12/2024","run_time":"/"}
execute unless score installed core_ctrl matches -2147483648..2147483647 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/install_info with storage mcmmt:core info
execute if score installed core_ctrl matches -2147483648..2147483647 as @s run function core:announcements/install_error
scoreboard players set installed core_ctrl 1