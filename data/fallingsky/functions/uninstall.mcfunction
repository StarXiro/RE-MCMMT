#stop
function fallingsky:pause

#tag
tag @a[tag=player,tag=Falling_sky] remove in_game
tag @a[tag=Falling_sky] remove Falling_sky
scoreboard players set round_mode core_scoreboard_display_config 0
scoreboard players set teamscore_mode core_scoreboard_display_config 0
scoreboard players set player_mode core_scoreboard_display_config 0
execute as @a run attribute @s generic.max_health base set 20

#back to lobby
function lobby:launch
#Dev info
execute store result storage mcmmt:fallingsky info.run_time int 1 run scoreboard players get gameclock core_clock
execute if score installed fallingsky_ctrl matches 1 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/uninstall_info with storage mcmmt:fallingsky info
execute unless score installed fallingsky_ctrl matches 1 as @s run function core:announcements/uninstall_error
scoreboard players reset * fallingsky_ctrl