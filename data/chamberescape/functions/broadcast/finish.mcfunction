#for Dev
$execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] {"translate":"[%s] $(name)team room$(num) ($(room)) finished.","with":[{"text":"Info","color":"gray"}]}

#for current team
$tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"%s 你们队伍完成了房间%s。用时为: %s。","with":[{"text":"[+84 pts]","color":"gold"},{"text":"$(num)","color":"aqua"},{"text":"NaN"}]}
$execute positioned ~-15 ~-3 ~-15 run tellraw @a[tag=Chamber_escape,dx=30,dy=30,dz=30,team=$(color)] {"translate":"%s 你完成了房间%s。","with":[{"text":"[+$(score) pts]","color":"gold"},{"text":"$(num)","color":"aqua"},{"text":"NaN"}]}
#for other players
$tellraw @a[tag=Chamber_escape,team=!$(color)] {"translate":"%s队完成了房间%s。用时为: %s。","with":[{"text":"$(name)","color":"$(display_color)"},{"text":"$(num)","color":"aqua"},{"text":"NaN"}]}

function chamberescape:map/private/clear_door