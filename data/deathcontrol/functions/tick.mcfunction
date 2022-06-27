# Keep XP upon death. When dc.keepexp dc_config is 0 xp is cleared when health is 0
execute if score dc.keepexp dc_config matches 0 run xp set @p[scores={dc_health=0}] 0 levels
execute if score dc.keepexp dc_config matches 0 run xp set @p[scores={dc_health=0}] 0 points

# Store Players XP in scoreboards
# execute at @a store result score @s dc_xppoints run xp query @s points
# execute at @a store result score @s dc_xplevels run xp query @s levels


# Give deaths loot table to players when they die.
execute if score dc.loot dc_config matches 1 at @e[type=player,scores={dc_deaths=1..}] run function deathcontrol:loot
