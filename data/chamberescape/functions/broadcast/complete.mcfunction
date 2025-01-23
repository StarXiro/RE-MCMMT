function chamberescape:score_action/escape with entity @s data
$tellraw @a[tag=Chamber_escape,team=$(name)] {"translate":"%s 你们队伍所有人成功逃脱! ","with":[{"text":"[+200 pts]","color":"gold"}]}
$tellraw @a[tag=Chamber_escape,team=!$(name)] {"translate":"%s队伍所有人成功逃脱! ","with":[{"text":"$(name)","color":"$(color)"}]}
$scoreboard players set @a[team=$(name),tag=Chamber_escape] game_finish_count -1