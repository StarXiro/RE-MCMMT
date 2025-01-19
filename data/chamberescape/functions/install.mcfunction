#pause
function chamberescape:pause

#scoreboard init
scoreboard objectives add chamberescape_ctrl dummy
scoreboard objectives add chamberescape_index dummy
scoreboard objectives add room_info used:carrot_on_a_stick
scoreboard objectives add room_reload used:warped_fungus_on_a_stick
scoreboard objectives add room1 dummy
scoreboard objectives add room2 dummy
scoreboard objectives add room3 dummy
scoreboard objectives add room4 dummy
scoreboard objectives add room5 dummy
scoreboard objectives add room6 dummy
scoreboard objectives add room7 dummy
scoreboard objectives add room8 dummy
scoreboard objectives add room9 dummy
scoreboard players reset * room_info 
scoreboard players reset * room_reload
scoreboard players reset * room1
scoreboard players reset * room2
scoreboard players reset * room3
scoreboard players reset * room4
scoreboard players reset * room5
scoreboard players reset * room6
scoreboard players reset * room7
scoreboard players reset * room8
scoreboard players reset * room9

#data init
data modify storage mcmmt:core scoreboard.content.map_name set value "9th Grid"
data modify storage mcmmt:core scoreboard.content.score_display set value "已完成房间数:"
data modify storage mcmmt:core scoreboard.content.max_round set value 1

#data init part2
data modify storage mcmmt:chamberescape roomlist set value ["","woolrun","red_redstone","year","windows","sandpush","trident","year","cart","year",""]
data modify storage mcmmt:chamberescape teamlist set from storage mcmmt:core config.teamlist
data modify storage mcmmt:chamberescape teamlist prepend value " "
data modify storage mcmmt:chamberescape namelist set from storage mcmmt:core config.teamlist2
data modify storage mcmmt:chamberescape namelist prepend value " "
data modify storage mcmmt:chamberescape colorlist set from storage mcmmt:core config.teamcolor
data modify storage mcmmt:chamberescape colorlist prepend value " "
data modify storage mcmmt:chamberescape pos set value [888,100,888]
data modify storage mcmmt:chamberescape marker.posx set from storage mcmmt:chamberescape pos[0]
data modify storage mcmmt:chamberescape marker.posz set from storage mcmmt:chamberescape pos[2]

#map generate
schedule function chamberescape:markers/generate 20t
schedule function chamberescape:map/generate_room 21t

#scoreboard display init
scoreboard players set teamscore_mode core_scoreboard_display_config 1
scoreboard players set round_mode core_scoreboard_display_config 0
scoreboard players set room_mode core_scoreboard_display_config 1
scoreboard players reset * process_ctrl

#clock start
execute unless score installed chamberescape_ctrl matches 1 run scoreboard players set gameclock core_clock 0
function core:clock/forgame/main

#ouput info
data modify storage mcmmt:chamberescape info set value {"game_name":"Chamber Escape","author":"StarXiro","version":"0.0.0","update_time":"01/04/2025","run_time":"300"}
execute unless score installed chamberescape_ctrl matches -2147483648..2147483647 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/install_info with storage mcmmt:chamberescape info
execute if score installed chamberescape_ctrl matches 1 as @s run function core:announcements/install_error
scoreboard players set installed chamberescape_ctrl 1
