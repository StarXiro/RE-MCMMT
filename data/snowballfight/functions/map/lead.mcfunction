#check lead
data modify storage mcmmt:snowballfight lead.team set from storage mcmmt:core team.list[0].color
function snowballfight:map/private/check_lead with storage mcmmt:snowballfight lead
schedule function snowballfight:map/lead 1s