# Interactive configuration menu.
# Called by each config/X function or by player directly.

# Header
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s [{"text":"           Death Control - Configuration Menu","color":"#e25903","bold":true}]
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}

# Keep Inventory
# Toggles the Keep Inventory gamerule.
execute if score keepinv dc_config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/enable_keep_inventory"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Keep Inventory",{"text":".","color":"green"}]}}," Keep Inventory"]
execute unless score keepinv dc_config matches 0 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/disable_keep_inventory"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Keep Inventory",{"text":".","color":"red"}]}}," Keep Inventory"]

# Keep Experience
# Sets player's xp to 0 levels and 0 points when disabled. When enabled, players drop their xp on the floor if Keep Inventory is disabled, or keep their xp if Keep Inventory is enabled.
execute if score keepexp dc_config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/enable_keep_experience"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Keep Experience",{"text":".","color":"green"}]}}," Keep Experience when using Keep Inventory"]
execute unless score keepexp dc_config matches 0 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/disable_keep_experience"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Keep Experience",{"text":".","color":"red"}]}}," Keep Experience when using Keep Inventory"]

# Give Loot
# Gives Loot to player upon death from deaths.json loot table.
execute if score loot dc_config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/enable_loot"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Give Loot",{"text":".","color":"green"}]}}," Give the player the deaths loot table upon death"]
execute unless score loot dc_config matches 0 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/disable_loot"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Give Loot",{"text":".","color":"red"}]}}," Give the player the deaths loot table upon death"]

# Lives
# Put players into spectator mode after a certain number of deaths.
execute if score lives dc_config matches 0 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/enable_lives"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"green"},"Lives",{"text":".","color":"green"}]}}," Limit the number of lives the player has"]
execute unless score lives dc_config matches 0 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function deathcontrol:config/disable_lives"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"red"},"Lives",{"text":".","color":"red"}]}}," Limit the number of lives the player has"]
tellraw @s ["",{"text": "[ ✏ ]", "color":"#949494", "clickEvent": {"action":"suggest_command", "value":"/scoreboard players set initial dc_lives <number>"}, "hoverEvent": {"action":"show_text", "value":"Click to Change. >1 \n(Default: 5)"}}, {"text":" The number of lives the player starts with.", "color":"#ffffff"}, {"text":" Current Number: ", "color":"#949494"}, {"score":{"name":"initial", "objective": "dc_lives"}}]

# Uninstall Command 
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s ["",{"text":"[ ★ ]","color":"#800000","clickEvent":{"action":"run_command","value":"/function deathcontrol:uninstall_warn"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to run uninstall command.","color":"red"}]}}," Uninstall Command"]
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}