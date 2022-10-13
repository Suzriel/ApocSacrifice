execute unless entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run scoreboard players add @e[type=armor_stand,name="etimer"] timer 1
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run scoreboard players add @e[type=armor_stand,name="dtimer"] timer 1
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run scoreboard players add @e[type=armor_stand,name="rtimer"] timer 1
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run scoreboard players add @e[type=armor_stand,name="ztimer"] timer 1
scoreboard players add @e[type=armor_stand,name="wtimer"] timer 1

execute if entity @e[type=armor_stand,name="etimer",scores={timer=71999}] run time set 0t

execute if entity @a[scores={deadPlayers=1}] run scoreboard players set @e[type=armor_stand,name="dtimer"] timer 0
execute if entity @a[scores={deadPlayers=1}] run scoreboard players set @e[type=armor_stand,name="etimer"] timer 0
execute if entity @a[scores={deadPlayers=1}] run gamemode spectator @a[scores={deadPlayers=1}]
execute if entity @a[scores={deadPlayers=1}] run scoreboard players add @a[scores={deadPlayers=1}] deadPlayers 1

execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~5 ~ 1 0
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=22}] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~5 ~ 1 0.5
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=42}] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~5 ~ 1 0
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=62}] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~5 ~ 1 0.5
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=82}] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~5 ~ 1 0
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=102}] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~5 ~ 1 0.5

execute if entity @e[type=armor_stand,name="ztimer",scores={timer=479}] run kill @e[name="zspawner"]
execute if entity @e[type=armor_stand,name="ztimer",scores={timer=480}] run execute at @r[scores={deadPlayers=0}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"zspawner"}'}
execute if entity @e[type=armor_stand,name="ztimer",scores={timer=570}] run execute at @e[type=armor_stand,name="zspawner"] run summon zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}]}
execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=3}] run execute if entity @e[type=armor_stand,name="ztimer",scores={timer=500}] run execute at @e[type=armor_stand,name="zspawner"] run summon zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}]}

execute if entity @e[type=armor_stand,name="etimer",scores={timer=1}] run tellraw @a {"text": "Important Reminder: Killing others (and deaths in general) will stop the apocalypse from progressing any further for 3 days! So save yourselves!", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=24001}] run tellraw @a {"text": "Important Reminder: Killing others (and deaths in general) will stop the apocalypse from progressing any further for 3 days! So save yourselves!", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=48001}] run tellraw @a {"text": "Important Reminder: Killing others (and deaths in general) will stop the apocalypse from progressing any further for 3 days! So save yourselves!", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=6000}] run tellraw @a {"text": "Important Reminder: Killing others (and deaths in general) will stop the apocalypse from progressing any further for 3 days! So save yourselves! (However it does come at a cost...)", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 1 of the Apocalypse: Zombies will begin to spawn now around players (even in daylight). A Warden will spawn soon, along with a wither shortly after.", "color": "#ff6600"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 2 of the Apocalypse: A Warden will spawn soon.", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=3}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 3 of the Apocalypse: Dead teammates shall be ressurected as stronger juggernauts with unique powers each. May god have mercy on you.", "color": "#ff4d4d"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=4}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 4 of the Apocalypse: A Warden will spawn soon.", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=5}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 5 of the Apocalypse: A Warden will spawn soon.", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 6 of the Apocalypse: Two withers will spawn soon, one after another (the latter being invincible yet unmoving.)", "color": "#ff4d4d"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=7}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 7 of the Apocalypse: You have survived to the seventh day, an impressive feat. A Warden will spawn soon.", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=8}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 8 of the Apocalypse: The juggernauts have been granted night vision, watch out! A Warden will spawn soon.", "color": "#ff751a"}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run tellraw @a {"text": "Day 9 of the Apocalypse: A teleporting wither will spawn soon. The world is collapsing. BE PREPARED.", "color": "#ff9999"}

execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run execute at @r[scores={deadPlayers=0}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"bspawner"}'}
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run particle minecraft:explosion_emitter ~ ~ ~ 3 10 3 0 30
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run particle minecraft:soul_fire_flame ~ ~ ~ 3 10 3 0 30
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=42}] run execute at @e[type=armor_stand,name="bspawner"] run particle minecraft:explosion_emitter ~ ~ ~ 3 10 3 0 30
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=42}] run execute at @e[type=armor_stand,name="bspawner"] run particle minecraft:soul_fire_flame ~ ~ ~ 3 10 3 0 30
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=42}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=82}] run execute at @e[type=armor_stand,name="bspawner"] run particle minecraft:explosion_emitter ~ ~ ~ 3 10 3 0 30
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=82}] run execute at @e[type=armor_stand,name="bspawner"] run particle minecraft:soul_fire_flame ~ ~ ~ 3 10 3 0 30
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=82}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 0
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:item.goat_horn.sound.4 hostile @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=3}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:item.goat_horn.sound.5 hostile @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner"] run effect give @s minecraft:glowing 1000000 1 true
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=695}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:item.goat_horn.sound.7 hostile @a ~ ~ ~ 1 0
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=695}] run execute at @e[type=armor_stand,name="bspawner"] run effect clear @s minecraft:glowing
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=653}] run execute at @e[type=armor_stand,name="bspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=657}] run execute at @e[type=armor_stand,name="bspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=660}] run execute at @e[type=armor_stand,name="bspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=665}] run execute at @e[type=armor_stand,name="bspawner"] run fill ~2 ~-1 ~2 ~-2 ~-3 ~-2 soul_soil keep
execute if entity @e[type=armor_stand,name="etimer",scores={timer=72000}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=665}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:item.goat_horn.sound.7 hostile @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=705}] run kill @e[type=armor_stand,name="bspawner"]

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon warden ~ ~ ~
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=11900}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute at @r[scores={deadPlayers=0}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"bspawner"}'}
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12351}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run effect give @s minecraft:glowing 1000000 1 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon wither ~ ~ ~
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12701}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run kill @e[type=armor_stand,name="bspawner"]

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon warden ~ ~ ~
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=699}] run clear @a[scores={deadPlayers=2},gamemode=spectator]
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:resistance 999999 2 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:absorption 999999 4 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:saturation 999999 99 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:glowing 100 1 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @r[scores={deadPlayers=2},gamemode=spectator] minecraft:speed 999999 2 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @r[scores={deadPlayers=2},gamemode=spectator] minecraft:jump_boost 999999 4 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @r[scores={deadPlayers=2},gamemode=spectator] minecraft:dolphins_grace 999999 1 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run effect give @r[scores={deadPlayers=2},gamemode=spectator] minecraft:fire_resistance 999999 1 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:diamond_axe
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:diamond_sword
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:iron_pickaxe
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:bow
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:spectral_arrow 256
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run give @a[scores={deadPlayers=2},gamemode=spectator] minecraft:goat_horn
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run item replace entity @a[scores={deadPlayers=2}] armor.head with minecraft:wither_skeleton_skull
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=701}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run gamemode survival @a[scores={deadPlayers=2}]
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=702}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute at @e[type=armor_stand,name="bspawner"] run teleport @a[scores={deadPlayers=2}] ~ ~ ~
execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=2}] run execute unless entity @e[type=armor_stand,name="rtimer",scores={timer=1}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 1.5

execute if entity @e[type=armor_stand,name="rtimer",scores={timer=8}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=703}] run effect give @a[scores={deadPlayers=2},gamemode=survival] night_vision 999999 3
gamemode spectator @a[scores={deadPlayers=3},gamemode=survival]
scoreboard players set @a[scores={deadPlayers=3}] deadPlayers 2

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=4}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon warden ~ ~ ~
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=4}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=5}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon warden ~ ~ ~
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=5}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon wither ~ ~ ~ {CustomName:'{"text":"The Heart"}'}
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=1}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12000}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute at @r[scores={deadPlayers=0}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"bspawner"}'}
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12351}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run effect give @s minecraft:glowing 1000000 1 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon wither ~ ~ ~ {Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"The Feather"}'}
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=12701}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=6}] run kill @e[type=armor_stand,name="bspawner"]

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=7}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon warden ~ ~ ~
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=7}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=8}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon warden ~ ~ ~
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=8}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0

execute if entity @e[type=armor_stand,name="dtimer",scores={timer=4}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run time set midnight
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=3}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run gamerule doDaylightCycle false
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=4}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run weather thunder
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=3}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run gamerule doWeatherCycle false
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=4}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run effect give @a night_vision 999999 1 true
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=699}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=3}] run kill @e[type=wither,name="Ammit"]
execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="bspawner",limit=1] run summon wither ~ ~ ~ {CustomName:'{"text":"Ammit"}'}
execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute if entity @e[type=armor_stand,name="dtimer",scores={timer=700}] run execute at @e[type=armor_stand,name="bspawner"] run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 1
execute if entity @e[type=armor_stand,name="ztimer",scores={timer=300}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run teleport @e[type=wither,name="Ammit"] ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=15}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=20}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon wither_skeleton ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=75}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run setblock ~ ~ ~ lava
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=715}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=750}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run setblock ~ ~ ~ lava
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=553}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon enderman ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=715}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=750}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run fill ~-1 ~ ~-1 ~1 ~3 ~1 lava
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=1400}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon lightning_bolt ~ ~ ~
execute if entity @e[type=armor_stand,name="wtimer",scores={timer=1469}] run execute if entity @e[type=armor_stand,name="rtimer",scores={timer=9}] run execute at @e[type=armor_stand,name="zspawner"] run summon end_crystal ~ ~1 ~

scoreboard players set @e[type=armor_stand,name="ztimer",scores={timer=600}] timer 0
scoreboard players set @e[type=armor_stand,name="dtimer",scores={timer=24000}] timer 0
scoreboard players set @e[type=armor_stand,name="etimer",scores={timer=72001}] timer 1
scoreboard players set @e[type=armor_stand,name="rtimer",scores={timer=10}] timer 0
scoreboard players set @e[type=armor_stand,name="wtimer",scores={timer=1471}] timer 0