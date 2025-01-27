$execute unless data entity @s Passengers run summon marker ~ ~ ~ {Tags:["snowball","not_riding","$(name)"]}
ride @e[limit=1,tag=not_riding] mount @s
tag @e[tag=snowball,distance=..1,type=marker] add riding
tag @e[tag=snowball,tag=not_riding] remove not_riding