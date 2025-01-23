$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间","color":"white"},{"text":"$(num)","color":"aqua"},{"text":" 信息:","color":"white"}]
$tellraw @a[team=$(color),tag=in_room$(num)] {"text":"目标: 将房间内的所有红色混凝土粉末推到绿色方块上。","color":"gold","bold":true}
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间难度: ","color":"white"},{"text":"中等","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间名称: ","color":"white"},{"text":"沙漠谜题","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"提示: ","color":"green"},{"text":"题目太困难可以群策群力。","color":"green"}]
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "

scoreboard players set @a room_info 0