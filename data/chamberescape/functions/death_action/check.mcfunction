$data modify storage mcmmt:team name set value $(name)
$execute as @a[tag=Chamber_escape,team=$(name),scores={death_count=1..}] run function chamberescape:death_action/main