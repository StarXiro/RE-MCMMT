#for Dev
$execute if score logon mainctrl matches 1 run tellraw @a[tag=Dev] {"translate":"[%s] $(name)team room$(num) ($(room)) restarted.","with":[{"text":"Info","color":"gray"}]}

#for current team
$tellraw @a[tag=Chamber_escape,team=$(color)] {"translate":"[%s] 你们队伍将房间%s重置了。","with":[{"text":"⚠","color":"gold"},{"text":"$(num)","color":"aqua"}]}