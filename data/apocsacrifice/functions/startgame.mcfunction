scoreboard objectives remove timer
scoreboard objectives remove deadPlayers
kill @e[type=armor_stand]
gamerule doDaylightCycle true
gamerule doWeatherCycle true
time set 0t
scoreboard objectives add timer dummy
scoreboard objectives add deadPlayers deathCount
scoreboard players add @a deadPlayers 0
forceload add 2 2 -2 -2
summon armor_stand 0 200 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"ztimer"}'}
summon armor_stand 0 200 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"wtimer"}'}
summon armor_stand 0 200 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"etimer"}'}
summon armor_stand 0 200 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"dtimer"}'}
summon armor_stand 0 200 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,CustomName:'{"text":"rtimer"}'}