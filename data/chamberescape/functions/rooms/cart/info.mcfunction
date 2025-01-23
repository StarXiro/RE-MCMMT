$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间","color":"white"},{"text":"$(num)","color":"aqua"},{"text":" 信息:","color":"white"}]
$tellraw @a[team=$(color),tag=in_room$(num)] {"text":"目标: 通过触发探测铁轨，点亮房间内的所有红石灯。","color":"gold","bold":true}
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间难度: ","color":"white"},{"text":"中等","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"房间名称: ","color":"white"},{"text":"红沙矿场","color":"gold"}]
$tellraw @a[team=$(color),tag=in_room$(num)] [{"text":"提示: ","color":"green"},{"text":"通过房间内的脚手架可以前往二层观察地图。","color":"green"}]
$tellraw @a[team=$(color),tag=in_room$(num)] " "
$tellraw @a[team=$(color),tag=in_room$(num)] " "

scoreboard players set @a room_info 0