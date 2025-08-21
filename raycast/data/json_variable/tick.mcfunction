$function parent:class/cast/$(ability)/$(class)/$(ability_selection)/$(raycast_tick)
$execute as @n[nbt=!{Invulnerable:1b},type=!#parent:raycast,tag=!selector,dy=0] run function parent:class/cast/$(ability)/$(class)/$(ability_selection)/$(raycast_entity)
$execute unless block ^ ^ ^ #parent:raycast run function parent:class/cast/$(ability)/$(class)/$(ability_selection)/$(raycast_block)
scoreboard players remove @s raycast 1
$execute if score @s raycast matches 0 run function parent:class/cast/$(ability)/$(class)/$(ability_selection)/$(raycast_end)
execute if score @s raycast matches 0.. if block ^ ^ ^ #parent:raycast unless entity @n[nbt=!{Invulnerable:1b},type=!#parent:raycast,type=!player,dy=0] positioned ^ ^ ^0.5 run function parent:class/cast/raycast/stop_at_any with storage parent:raycast
