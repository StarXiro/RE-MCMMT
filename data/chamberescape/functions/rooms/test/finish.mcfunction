
fill ~15 ~12 ~15 ~-15 ~13 ~-15 lime_stained_glass replace light_blue_stained_glass
$execute store result score @s room_player_count run execute if entity @a[tag=in_room$(num),team=$(color)]
execute at @s run function chamberescape:score_action/finish with entity @s data
execute at @s run function chamberescape:broadcast/finish with entity @s data
$data modify storage mcmmt:core scoreboard.content.room_name set value "$(room)"
$scoreboard players add $(color) game_room_finish 1
function chamberescape:score_action/update
tag @s add finished