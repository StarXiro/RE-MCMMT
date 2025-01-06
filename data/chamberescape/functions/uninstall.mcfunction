#stop
function chamberescape:pause

#tag
tag @a[tag=player,tag=Chamber_escape] remove in_game
tag @a[tag=Chamber_escape] remove Chamber_escape

scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set room_mode core_scoreboard_display_config 0
scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set player_mode core_scoreboard_display_config 0

#back to lobby
function lobby:launch

#Dev info
execute store result storage mcmmt:chamberescape info.run_time int 1 run scoreboard players get gameclock core_clock
execute if score installed chamberescape_ctrl matches 1 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/uninstall_info with storage mcmmt:chamberescape info
execute unless score installed chamberescape_ctrl matches 1 as @s run function core:announcements/uninstall_error
scoreboard players reset * chamberescape_ctrl