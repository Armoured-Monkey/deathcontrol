# Adds one xp level to the player then removes 1 from their dc_xplevels_it
# Called by process/iterate/xp.mcfunction and scheduled by self

tell @a + 1 level
xp add @p 1 levels
scoreboard players remove @p dc_xplevels_it 1
execute if score @p dc_xplevels_it > zero dc_config run schedule function deathcontrol:process/iterate/levels 1t