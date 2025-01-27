#stop
function carnivalparty:pause

#tag
tag @a[tag=player,tag=Carnival_party] remove in_game
tag @a[tag=Carnival_party] remove Carnival_party
scoreboard players set round_mode core_scoreboard_display_config 0
scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set player_mode core_scoreboard_display_config 0

#back to lobby
function lobby:launch
#Dev info
execute store result storage mcmmt:carnivalparty info.run_time int 1 run scoreboard players get gameclock core_clock
execute if score installed carnivalparty_ctrl matches 1 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/uninstall_info with storage mcmmt:carnivalparty info
execute unless score installed carnivalparty_ctrl matches 1 as @s run function core:announcements/uninstall_error
scoreboard players reset * carnivalparty_ctrl