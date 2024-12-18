scoreboard objectives remove core_marker_generate
data remove storage mcmmt:core utils.marker_generate
execute if score installed core_ctrl matches 1 if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"✔ ","color":"green"},{"text":"Successfully uninstalled util : Marker Generate.","color":"gray"}]