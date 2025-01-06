#for Dev
$execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] {"translate":"[%s] $(name)team room$(num) ($(room)) started.","with":[{"text":"Info","color":"gray"}]}

#for current team
$tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"[%s] 你们队伍开始了对房间%s的挑战。","with":[{"text":"⚠","color":"yellow"},{"text":"$(num)","color":"aqua"}]}