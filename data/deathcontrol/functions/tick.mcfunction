# Keep XP upon death. When dc.keepexp dc_config is 0 xp is cleared when health is 0
execute if score dc.keepexp dc_config matches 0 run xp set @p[scores={dc_health=0}] 0 levels
execute if score dc.keepexp dc_config matches 0 run xp set @p[scores={dc_health=0}] 0 points
execute if score dc.loot dc_config matches 1 at @a[score={dc_deaths=1..}] run function deathcontrol:loot
