#stop
function snowballfight:pause

#tag
tag @a[tag=player,tag=Snowball_fight] remove in_game
scoreboard players set @a[tag=Snowball_fight] game_player_count 0
tag @a[tag=Snowball_fight] remove Snowball_fight

scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set room_mode core_scoreboard_display_config 0
scoreboard players set player_mode core_scoreboard_display_config 0

#back to lobby
function lobby:launch

#Dev info
execute store result storage mcmmt:snowballfight info.run_time int 1 run scoreboard players get gameclock core_clock
execute if score installed snowballfight_ctrl matches 1 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/uninstall_info with storage mcmmt:snowballfight info
execute unless score installed snowballfight_ctrl matches 1 as @s run function core:announcements/uninstall_error
scoreboard players reset * snowballfight_ctrl