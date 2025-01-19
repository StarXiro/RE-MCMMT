tellraw @a {"text": "------------------------------", "color": "green"}
tellraw @a [{"text": "游戏规则：", "color": "aqua","italic": true}]
tellraw @a [{"text": "- 你将和队友在由9个不同的房间组成的地图中合作", "color": "gray"}]
tellraw @a [{"text": "- 地图包括初始房间和结束房间，游戏出口在结束房间中", "color": "gray"}]
tellraw @a [{"text": "- 整场游戏限时10分钟，时间结束时出口将关闭", "color": "gray"}]
tellraw @a [{"text": "- 在房间中，你可以使用道具获取信息或重置房间，完成目标后房间进行结算", "color": "gray"}]
tellraw @a [{"text": "- 每当一个房间完成，此房间内的所有玩家平分积分，同时打开所有相邻的通路", "color": "gray"}]
tellraw @a [{"text": "- 每个队伍完成任意房间时，将会在公屏播报他们完成该房间所用的时间", "color": "gray"}]
tellraw @a [{"text": "- 每个房间的难度和需要的玩家数量不是固定的，你可以与队友进行交流和安排", "color": "gray"}]
tellraw @a {"text": "------------------------------", "color": "green"}
schedule function chamberescape:game_intro/txt_5 240t