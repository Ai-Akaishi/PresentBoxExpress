### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute rotated ~0 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: panel merge value {rotation:0}
execute rotated ~90 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: panel merge value {rotation:90}
execute rotated ~180 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: panel merge value {rotation:180}
execute rotated ~270 ~ positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.01] run data modify storage present_box_express: panel merge value {rotation:270}

execute if entity @s[tag=empty,tag=!side_empty] run data modify storage present_box_express: panel merge value {type:"empty",rotation:0}
execute if entity @s[tag=empty,tag=side_empty] run data modify storage present_box_express: panel merge value {type:"side_empty",rotation:0}
execute if entity @s[tag=tree] run data modify storage present_box_express: panel merge value {type:"tree",rotation:0}

execute if entity @s[tag=goal_1st] run data modify storage present_box_express: panel merge value {type:"goal_1st",rotation:0}
execute if entity @s[tag=goal_2nd] run data modify storage present_box_express: panel merge value {type:"goal_2nd",rotation:0}

execute if entity @s[tag=allay_1st] run data modify storage present_box_express: panel.type set value "allay_1st"
execute if entity @s[tag=allay_2nd] run data modify storage present_box_express: panel.type set value "allay_2nd"

execute if entity @s[tag=arrow_1st,tag=!active_arrow] run data modify storage present_box_express: panel.type set value "arrow_1st"
execute if entity @s[tag=arrow_2nd,tag=!active_arrow] run data modify storage present_box_express: panel.type set value "arrow_2nd"
execute if entity @s[tag=arrow_both_0,tag=!active_arrow] run data modify storage present_box_express: panel.type set value "arrow_both_0"
execute if entity @s[tag=arrow_both_90,tag=!active_arrow] run data modify storage present_box_express: panel.type set value "arrow_both_90"
execute if entity @s[tag=arrow_both_180,tag=!active_arrow] run data modify storage present_box_express: panel.type set value "arrow_both_180"
execute if entity @s[tag=arrow_both_270,tag=!active_arrow] run data modify storage present_box_express: panel.type set value "arrow_both_270"

execute if entity @s[tag=arrow_1st,tag=active_arrow] run data modify storage present_box_express: panel.type set value "active_arrow_1st"
execute if entity @s[tag=arrow_2nd,tag=active_arrow] run data modify storage present_box_express: panel.type set value "active_arrow_2nd"
execute if entity @s[tag=arrow_both_0,tag=active_arrow] run data modify storage present_box_express: panel.type set value "active_arrow_both_0"
execute if entity @s[tag=arrow_both_90,tag=active_arrow] run data modify storage present_box_express: panel.type set value "active_arrow_both_90"
execute if entity @s[tag=arrow_both_180,tag=active_arrow] run data modify storage present_box_express: panel.type set value "active_arrow_both_180"
execute if entity @s[tag=arrow_both_270,tag=active_arrow] run data modify storage present_box_express: panel.type set value "active_arrow_both_270"

function present_box_express:transition/edit_to_select_panel/save_panels/-m4 with storage present_box_express: panel
