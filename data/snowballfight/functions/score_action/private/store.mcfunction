$execute store result score $(name) wool_count1 run fill -2949 100 -2949 -3051 100 -3051 bedrock replace $(woolcolor)_wool
$fill -2949 100 -2949 -3051 100 -3051 $(woolcolor)_wool replace bedrock
$execute store result score $(name) wool_count2 run fill -2974 105 -2974 -3026 105 -3026 bedrock replace $(woolcolor)_wool
$fill -2974 105 -2974 -3026 105 -3026 $(woolcolor)_wool replace bedrock
$execute store result score $(name) wool_count3 run fill -2989 110 -2989 -3011 110 -3011 bedrock replace $(woolcolor)_wool
$fill -2989 110 -2989 -3011 110 -3011 $(woolcolor)_wool replace bedrock
$scoreboard players operation $(name) wool_temp = $(name) wool_count1
$scoreboard players operation $(name) game_room_finish = $(name) wool_temp
$scoreboard players operation $(name) wool_temp = $(name) wool_count2
$scoreboard players operation $(name) wool_temp *= 3 core_num
$scoreboard players operation $(name) game_room_finish += $(name) wool_temp
$scoreboard players operation $(name) wool_temp = $(name) wool_count3
$scoreboard players operation $(name) wool_temp *= 6 core_num
$scoreboard players operation $(name) game_room_finish += $(name) wool_temp
#$tellraw @a[tag=Dev] {"score":{"name":"$(name)","objective":"wool_count"}}