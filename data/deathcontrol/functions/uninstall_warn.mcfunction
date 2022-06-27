# Uninstallation warning
# Called by configuration menu

# Interactive message for uninstallation confirmation
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}
tellraw @s ["", {"text":"Are you sure that you want to uninstall Death Control? ","hoverEvent":{"action":"show_text","contents":["",{"text":"This will remove any settings.","color":"red"}]}},{"text":"Yes","color":"#800000","underlined":true,"clickEvent":{"action":"run_command","value":"/function deathcontrol:uninstall"}}]
tellraw @s {"text":"                                                                                ","color":"#7f3202","strikethrough":true}