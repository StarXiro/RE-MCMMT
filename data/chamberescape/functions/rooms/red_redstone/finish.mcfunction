#Type your command here.此处用于执行房间完成后的指令，仅在房间完成的一瞬间进行。
fill ~13 ~2 ~ ~13 ~1 ~ air
fill ~2 ~2 ~-13 ~2 ~1 ~-13 air
fill ~2 ~2 ~13 ~2 ~1 ~13 air
fill ~-13 ~2 ~ ~-13 ~1 ~ air
fill ~-2 ~2 ~-13 ~-2 ~1 ~-13 air
fill ~-2 ~2 ~13 ~-2 ~1 ~13 air
fill ~-13 ~ ~-13 ~13 ~20 ~13 air replace gray_stained_glass
#must retain.用于触发结束播报、分数计算和相关操作，无需修改。
fill ~15 ~12 ~15 ~-15 ~13 ~-15 lime_stained_glass replace light_blue_stained_glass
$execute store result score @s room_player_count run execute if entity @a[tag=in_room$(num),team=$(color)]
execute at @s run function chamberescape:score_action/finish with entity @s data
execute at @s run function chamberescape:broadcast/finish with entity @s data
$data modify storage mcmmt:core scoreboard.content.room_name set value "$(room)"
$scoreboard players add $(color) game_room_finish 1
function chamberescape:score_action/update
tag @s add finished