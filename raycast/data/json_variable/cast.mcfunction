tag @s add caster
execute anchored eyes positioned ^ ^ ^ run function raycast:json_variable/tick #this doesn't need to rely on json variables
tag @s remove caster
