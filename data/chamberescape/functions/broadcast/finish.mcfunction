#for Dev
$execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] {"translate":"[%s] $(name)team room$(num) ($(room)) finished.","with":[{"text":"Info","color":"gray"}]}

#for current team
$execute if score @s timer_second matches ..9 if score @s timer_ms matches ..9 run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍完成了房间%s。用时为: %s:0%s:0%s。","with":[{"text":"[+84 pts]","color":"gold"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}
$execute if score @s timer_second matches ..9 if score @s timer_ms matches 10.. run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍完成了房间%s。用时为: %s:0%s:%s。","with":[{"text":"[+84 pts]","color":"gold"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}
$execute if score @s timer_second matches 10.. if score @s timer_ms matches ..9 run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍完成了房间%s。用时为: %s:%s:0%s。","with":[{"text":"[+84 pts]","color":"gold"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}
$execute if score @s timer_second matches 10.. if score @s timer_ms matches 10.. run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍完成了房间%s。用时为: %s:%s:%s。","with":[{"text":"[+84 pts]","color":"gold"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}

$execute positioned ~-15 ~-3 ~-15 run tellraw @a[tag=Chamber_escape,dx=30,dy=30,dz=30,team=$(color)] {"translate":"%s 你完成了房间%s。","with":[{"text":"[+$(score) pts]","color":"gold"},{"text":"$(num)","color":"aqua"}]}

#for other players
$execute if score @s timer_second matches ..9 if score @s timer_ms matches ..9 run tellraw @a[tag=Chamber_escape,team=!$(color)] {"translate":"%s队完成了房间%s。用时为: %s:0%s:0%s。","with":[{"text":"$(name)","color":"$(display_color)"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}
$execute if score @s timer_second matches 10.. if score @s timer_ms matches ..9 run tellraw @a[tag=Chamber_escape,team=!$(color)] {"translate":"%s队完成了房间%s。用时为: %s:%s:0%s。","with":[{"text":"$(name)","color":"$(display_color)"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}
$execute if score @s timer_second matches 10.. if score @s timer_ms matches 10.. run tellraw @a[tag=Chamber_escape,team=!$(color)] {"translate":"%s队完成了房间%s。用时为: %s:%s:%s。","with":[{"text":"$(name)","color":"$(display_color)"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}
$execute if score @s timer_second matches ..9 if score @s timer_ms matches 10.. run tellraw @a[tag=Chamber_escape,team=!$(color)] {"translate":"%s队完成了房间%s。用时为: %s:0%s:%s。","with":[{"text":"$(name)","color":"$(display_color)"},{"text":"$(num)","color":"aqua"},{"score":{"objective":"timer_minute","name":"@s"}},{"score":{"objective":"timer_second","name":"@s"}},{"score":{"objective":"timer_ms","name":"@s"}}]}


$execute if score $(color) room$(num) matches 1 run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍第%s个完成了房间%s。","with":[{"text":"[+48 pts]","color":"gold"},{"text":"1","color":"#ffd700"},{"text":"$(num)","color":"aqua"}]}
$execute if score $(color) room$(num) matches 2 run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍第%s个完成了房间%s。","with":[{"text":"[+32 pts]","color":"gold"},{"text":"1","color":"#c0c0c0"},{"text":"$(num)","color":"aqua"}]}
$execute if score $(color) room$(num) matches 3 run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍第%s个完成了房间%s。","with":[{"text":"[+16 pts]","color":"gold"},{"text":"1","color":"#b87333"},{"text":"$(num)","color":"aqua"}]}
$execute if score $(color) room$(num) matches 4.. run tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"你们队伍第%s个完成了房间%s。","with":[{"score":{"objective":"room$(num)","name":"$(color)"},"color":"white"},{"text":"$(num)","color":"aqua"}]}
tag @s remove counting

function chamberescape:map/private/clear_door