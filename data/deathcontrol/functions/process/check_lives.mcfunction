# Called by Schedule in process.mcfunction
# Checks for players who have lost all of their lives.

execute as @a[scores={dc_lives=..0}] if entity @s[tag=!dc.spec] run gamemode spectator @s
