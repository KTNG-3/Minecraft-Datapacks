scoreboard players set ing_Deathpoint ing_Core.isActive 1
scoreboard players add ing_Deathpoint ing_Core.Load 1

## function

# deathpoint

scoreboard objectives add ing_DeathPoint.x dummy
scoreboard objectives add ing_DeathPoint.y dummy
scoreboard objectives add ing_DeathPoint.z dummy
scoreboard objectives add ing_DeathPoint.world dummy
scoreboard objectives add ing_DeathPoint.if deathCount

# live time

scoreboard objectives add ing_DeathPoint.time minecraft.custom:minecraft.time_since_death
scoreboard objectives add ing_DeathPoint.h dummy
scoreboard objectives add ing_DeathPoint.m dummy
scoreboard objectives add ing_DeathPoint.s dummy