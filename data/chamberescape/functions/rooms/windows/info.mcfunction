#Type your info here. Remember to use '$'.此处填写本房间的提示（甚至作者的话）
#eg.
$tellraw @a[team=$(color)] " "
$tellraw @a[team=$(color)] " "
$tellraw @a[team=$(color)] " "
$tellraw @a[team=$(color)] [{"text":"房间","color":"white"},{"text":"$(num)","color":"aqua"},{"text":" 信息:","color":"white"}]
$tellraw @a[team=$(color)] {"text":"目标: 点亮房间内的所有红石灯。","color":"gold","bold":true}
$tellraw @a[team=$(color)] [{"text":"房间难度: ","color":"white"},{"text":"中等","color":"gold"}]
$tellraw @a[team=$(color)] [{"text":"房间名称: ","color":"white"},{"text":"四色视窗","color":"gold"}]
$tellraw @a[team=$(color)] [{"text":"提示: ","color":"green"},{"text":"注意观察羊毛方块和地板颜色。","color":"green"}]
$tellraw @a[team=$(color)] " "
$tellraw @a[team=$(color)] " "
#?

#must retain.用于重置info触发，无需修改。
scoreboard players set @a room_info 0