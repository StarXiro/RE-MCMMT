#stop clock
schedule clear core:clock/forcore/main

#utils uninstall
function core:marker_generate/uninstall
function core:scoreboard_sort/uninstall

#Dev info
execute store result storage mcmmt:core info.run_time int 1 run scoreboard players get coreclock core_clock
execute if score installed core_ctrl matches 1 if score logon mainctrl matches 1 as @a[tag=Dev] run function core:announcements/uninstall_info with storage mcmmt:core info
execute unless score installed core_ctrl matches 1 as @s run function core:announcements/uninstall_error
scoreboard players reset * core_ctrl 