#particle firework ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[nbt=!{Invulnerable:1b},type=!#parent:raycast,type=!player,dz=0,sort=nearest,limit=1] run function raycast:generic/hit
scoreboard players remove @a[tag=caster] raycast 1
execute as @a[tag=caster,scores={raycast=0..}] if block ~ ~ ~ #parent:raycast unless entity @e[nbt=!{Invulnerable:1b},type=!#parent:raycast,type=!player,dz=0,sort=nearest,limit=1] positioned ^ ^ ^.5 run function raycast:generic/tick
