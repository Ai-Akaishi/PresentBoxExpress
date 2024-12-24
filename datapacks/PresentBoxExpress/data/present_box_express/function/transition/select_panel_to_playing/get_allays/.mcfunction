### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# 盤面の状態を記録する
data modify storage present_box_express: allays set value []
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s as @e[type=interaction,tag=PresentBoxExpress,tag=allay] if predicate present_box_express:is_current_part run function present_box_express:transition/select_panel_to_playing/get_allays/each
