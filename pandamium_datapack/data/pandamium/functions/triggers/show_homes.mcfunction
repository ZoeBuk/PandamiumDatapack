execute if score @s show_homes matches 1 run scoreboard players operation @s show_homes = @s id

execute at @a if score @s show_homes = @p id run function pandamium:misc/list_homes

scoreboard players reset @s show_homes
scoreboard players enable @s show_homes
