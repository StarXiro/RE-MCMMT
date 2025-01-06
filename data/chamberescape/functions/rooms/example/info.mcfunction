#Type your info here. Remember to use '$'.此处填写本房间的提示（甚至作者的话）
#eg.
#$tellraw @a[team=$(color)] " "
#$tellraw @a[team=$(color)] " "
#$tellraw @a[team=$(color)] " "
#$tellraw @a[team=$(color)] {"text":"目标:成功按下按钮推动活塞。","color":"gold"}
#$tellraw @a[team=$(color)] "房间难度:-1 (不是用来玩的) 。"
#$tellraw @a[team=$(color)] "房间序号:room$(num),房间名:$(room)"
#?

#must retain.用于重置info触发，无需修改。
scoreboard players set @a room_info 0