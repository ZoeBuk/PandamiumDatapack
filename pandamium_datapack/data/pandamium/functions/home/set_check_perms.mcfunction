execute if score @s gameplay_perms matches 0 if score @s sethome matches 1 run function pandamium:home/set_check_dimension
execute if score @s gameplay_perms matches 0 if score @s sethome matches 2..5 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators, Elders, and Veterans can use more than one home! You can check the ","color":"red"}, {"text":"Discord","color":"gold","hoverEvent":{"action":"show_text","value":"discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s gameplay_perms matches 1 if score @s sethome matches 1..2 run function pandamium:home/set_check_dimension
execute if score @s gameplay_perms matches 1 unless score @s sethome matches 1..2 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators and Veterans can use more than 2 homes! You can check the ","color":"red"}, {"text":"Discord","color":"gold","hoverEvent":{"action":"show_text","value":"discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s gameplay_perms matches 2 if score @s sethome matches 1..3 run function pandamium:home/set_check_dimension
execute if score @s gameplay_perms matches 2 unless score @s sethome matches 1..3 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" Only Donators can use more than 3 homes! You can check the ","color":"red"}, {"text":"Discord","color":"gold","hoverEvent":{"action":"show_text","value":"discord.pandamium.eu"}},{"text":" for more information on how to donate.","color":"red"}]

execute if score @s gameplay_perms matches 3 if score @s sethome matches 1..5 run function pandamium:home/set_check_dimension