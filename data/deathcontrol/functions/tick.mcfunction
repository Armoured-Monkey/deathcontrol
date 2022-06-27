# Checks for players that need to be processed
# Called by minecraft:tick tag

# Give the initial amount of lives to a player when they first join. 
execute if score lives dc_config matches 1 unless score @p dc_initlives matches 1 run function deathcontrol:set_initial_lives

# Store xp points and levels in respective scoreboards
execute store result score @p dc_xppoints run experience query @p points
execute store result score @p dc_xplevels run experience query @p levels

# Restores xp to players once they respawn
# execute if score keepexp dc_config matches 1 unless score keepinv dc_config matches 1 as @a[scores={dc_deaths=0,dc_xplevels_it=1..,dc_xppoints_it=1..}] run function deathcontrol:process/iterate/xp

# Process players who die
execute at @p[scores={dc_deaths=1..}] run function deathcontrol:process