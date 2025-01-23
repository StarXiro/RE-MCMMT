$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] {"text":"目标:成功按下按钮推动活塞。","color":"gold"}
$tellraw @a[team=$(color),tag=in_room$(num)] "房间难度:-1 (不是用来玩的) 。"
$tellraw @a[team=$(color),tag=in_room$(num)] "房间序号:room$(num),房间名:$(room)"
scoreboard players set @a room_info 0