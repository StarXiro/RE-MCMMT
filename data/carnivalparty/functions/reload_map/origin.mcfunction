#蓝的盆
fill -269 112 -269 -331 135 -331 air replace minecraft:black_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:blue_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:brown_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:cyan_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:gray_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:green_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:light_blue_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:light_gray_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:lime_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:magenta_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:orange_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:pink_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:purple_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:red_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:white_concrete_powder
fill -269 112 -269 -331 135 -331 air replace minecraft:yellow_concrete_powder

#info
execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] [{"text":"[✔] ","color":"green"},{"text":"Map Origin successfully reloaded.","color":"gray"}]