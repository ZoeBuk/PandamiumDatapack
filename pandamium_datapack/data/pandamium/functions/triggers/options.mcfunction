#Menu
execute if score @s options matches 1.. run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Options Menu","bold":true}," ========"]

execute if score @s options matches 1.. if score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle TPA Requests","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}}]
execute if score @s options matches 1.. unless score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle TPA Requests","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -1"}}]

execute if score @s options matches 1.. if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}}]
execute if score @s options matches 1.. unless score @s disable_keep_inv matches 1 run tellraw @s [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -102"}}]

execute if score @s options matches 1.. if score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Phantom Spawning","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}}]
execute if score @s options matches 1.. unless score @s disable_insomnia matches 1 run tellraw @s [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Phantom Spawning","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger options set -3"}}]

scoreboard players set <can_toggle_donator_prefix> variable 0
execute unless entity @s[team=!donator,team=!elder+,team=!veteran+,team=!elite+] if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run scoreboard players set <can_toggle_donator_prefix> variable 1
execute store success score <donator_team> variable if entity @s[team=donator]
execute if score @s options matches 1.. if score <can_toggle_donator_prefix> variable matches 1 if score <donator_team> variable matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Donator Prefix","color":"dark_purple"}},"clickEvent":{"action":"run_command","value":"/trigger options set -128"}}]
execute if score @s options matches 1.. if score <can_toggle_donator_prefix> variable matches 1 unless score <donator_team> variable matches 1 run tellraw @s [{"text":"Donator Prefix: ","color":"dark_purple"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Donator Prefix","color":"dark_purple"}},"clickEvent":{"action":"run_command","value":"/trigger options set -128"}}]

execute if score @s options matches 1.. if score @s staff_perms matches 1.. if score @s hide_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"gold"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Silent Punishments","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}}]
execute if score @s options matches 1.. if score @s staff_perms matches 1.. unless score @s hide_punishments matches 1 run tellraw @s [{"text":"Silent Punishments: ","color":"gold"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Silent Punishments","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -64"}}]

execute if score @s options matches 1.. if score @s staff_perms matches 2.. if score @s spectator_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold"},{"text":"True","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Spectator Night Vision","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -65"}}]
execute if score @s options matches 1.. if score @s staff_perms matches 2.. unless score @s spectator_vision matches 1 run tellraw @s [{"text":"Spectator Night Vision: ","color":"gold"},{"text":"False","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Toggle Spectator Night Vision","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger options set -65"}}]

execute if score @s options matches 1.. run tellraw @s {"text":"==============================","color":"aqua"}

#Confirmation Messages
execute if score @s options matches -102 unless score @s disable_keep_inv matches 1 run tellraw @s [{"text":"","color":"red"},{"text":"[Options]","color":"dark_red"}," Are you sure you want to disable Keep-Inventory? Doing this will cause you to drop all your items onto the ground whenever you die. ",{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Toggle Keep-Inventory for Yourself","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger options set -2"}}]
execute if score @s options matches -102 if score @s disable_keep_inv matches 1 run scoreboard players set @s options -2

#Toggle Options
execute if score @s options matches -1 store success score @s disable_tp_rqsts unless score @s disable_tp_rqsts matches 1
execute if score @s options matches -1 if score @s disable_tp_rqsts matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -1 if score @s disable_tp_rqsts matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Receive TPA Requests","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -2 store success score @s disable_keep_inv unless score @s disable_keep_inv matches 1
execute if score @s options matches -2 if score @s disable_keep_inv matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -2 if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Keep-Inventory","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -3 store success score @s disable_insomnia unless score @s disable_insomnia matches 1
execute if score @s options matches -3 if score @s disable_insomnia matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Phantom Spawning","bold":true,"color":"yellow"},"!"]
execute if score @s options matches -3 if score @s disable_insomnia matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Phantom Spawning","bold":true,"color":"yellow"},"!"]

execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 run function pandamium:misc/toggle_donator_team
execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 if score <donator_team> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Donator Prefix","bold":true,"color":"dark_purple"},"!"]
execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 if score <donator_team> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Donator Prefix","bold":true,"color":"dark_purple"},"!"]

execute if score @s options matches -64 if score @s staff_perms matches 1.. store success score @s hide_punishments unless score @s hide_punishments matches 1
execute if score @s options matches -64 if score @s staff_perms matches 1.. if score @s hide_punishments matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Silent Punishments","bold":true,"color":"gold"},"!"]
execute if score @s options matches -64 if score @s staff_perms matches 1.. if score @s hide_punishments matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Silent Punishments","bold":true,"color":"gold"},"!"]

execute if score @s options matches -65 if score @s staff_perms matches 2.. store success score @s spectator_vision unless score @s spectator_vision matches 1
execute if score @s options matches -65 if score @s staff_perms matches 2.. if score @s spectator_vision matches 0 run effect clear @s[gamemode=spectator] night_vision
execute if score @s options matches -65 if score @s staff_perms matches 2.. if score @s spectator_vision matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Disabled","color":"aqua"}," ",{"text":"Spectator Night Vision","bold":true,"color":"gold"},"!"]
execute if score @s options matches -65 if score @s staff_perms matches 2.. if score @s spectator_vision matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Options]","color":"dark_green"}," ",{"text":"Enabled","color":"aqua"}," ",{"text":"Spectator Night Vision","bold":true,"color":"gold"},"!"]

# Error
scoreboard players set <has_toggled_donator_prefix> variable 0
execute if score @s options matches -128 if score <can_toggle_donator_prefix> variable matches 1 run scoreboard players set <has_toggled_donator_prefix> variable 1
execute if score @s options matches ..-4 unless score @s option matches -102 unless score <has_toggled_donator_prefix> variable matches 1 unless entity @s[scores={options=-64,staff_perms=1..}] unless entity @s[scores={options=-65,staff_perms=2..}] run tellraw @s [{"text":"[Options]","color":"dark_red"},{"text":" This is not a valid option!","color":"red"}]

scoreboard players reset @s options
scoreboard players enable @s options