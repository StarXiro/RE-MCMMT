$scoreboard players add $(color) game_store_score 84
scoreboard players operation @s score_temp = 36 core_num
scoreboard players operation @s score_temp /= @s room_player_count
$execute positioned ~-15 ~-3 ~-15 run scoreboard players operation @a[tag=Chamber_escape,team=$(color),dx=30,dy=30,dz=30] game_player_score += @s score_temp
execute store result entity @s data.score int 1 run scoreboard players get @s score_temp