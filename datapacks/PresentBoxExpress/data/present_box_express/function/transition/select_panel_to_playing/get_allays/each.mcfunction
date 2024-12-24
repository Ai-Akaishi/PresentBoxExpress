### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[tag=allay_1st] run data modify storage present_box_express: allay set value {type:"1st"}
execute if entity @s[tag=allay_2nd] run data modify storage present_box_express: allay set value {type:"2nd"}
execute positioned as @s rotated ~0 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: allay merge value {rotation:0}
execute positioned as @s rotated ~90 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: allay merge value {rotation:90}
execute positioned as @s rotated ~180 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: allay merge value {rotation:180}
execute positioned as @s rotated ~270 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: allay merge value {rotation:270}
execute store result storage present_box_express: allay.pos int 1 run function present_box_express:transition/select_panel_to_playing/pos
data modify storage present_box_express: allays append from storage present_box_express: allay
