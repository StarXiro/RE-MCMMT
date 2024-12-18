#stop
function fallingsky:pause

#tag
tp @a 400 101 400
gamemode adventure @a[gamemode=!adventure]
tag @a[tag=player,tag=Falling_sky] remove in_game
tag @a[tag=Falling_sky] remove Falling_sky
spawnpoint @a 400 101 400

#text_display update
function core:text_display/action/player_score
function core:text_display/action/team_score

#Dev info
execute store result storage mcmmt:fallingsky info.run_time int 1 run scoreboard players get gameclock core_clock
execute if score installed fallingsky_ctrl matches 1 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/uninstall_info with storage mcmmt:fallingsky info
execute unless score installed fallingsky_ctrl matches 1 as @s run function core:announcements/uninstall_error
scoreboard players reset * fallingsky_ctrl