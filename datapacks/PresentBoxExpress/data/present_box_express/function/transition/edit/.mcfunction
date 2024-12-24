### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# 空白選択
execute if data storage present_box_express: action{type:["empty"]} unless data storage present_box_express: action{type:["side_empty"]} run function present_box_express:panel/set_to/tree
# 木を選択
execute if data storage present_box_express: action{type:["tree"]} run function present_box_express:panel/set_to/goal_1st
# ゴールを選択
execute if data storage present_box_express: action{type:["goal_1st"]} run function present_box_express:panel/set_to/goal_2nd
execute if data storage present_box_express: action{type:["goal_2nd"]} run function present_box_express:panel/set_to/allay_1st
# アレイを選択
execute if data storage present_box_express: action{type:["allay_1st"]} run function present_box_express:panel/set_to/allay_2nd
execute if data storage present_box_express: action{type:["allay_2nd"]} run function present_box_express:panel/set_to/arrow_1st
# 矢印を選択(盤上)
execute if data storage present_box_express: action{type:["arrow_1st"]} unless data storage present_box_express: action{type:["active_arrow"]} run function present_box_express:panel/set_to/arrow_2nd
execute if data storage present_box_express: action{type:["arrow_2nd"]} unless data storage present_box_express: action{type:["active_arrow"]} run function present_box_express:panel/set_to/arrow_both_0
execute if data storage present_box_express: action{type:["arrow_both_0"]} unless data storage present_box_express: action{type:["active_arrow"]} run function present_box_express:panel/set_to/arrow_both_90
execute if data storage present_box_express: action{type:["arrow_both_90"]} unless data storage present_box_express: action{type:["active_arrow"]} run function present_box_express:panel/set_to/arrow_both_180
execute if data storage present_box_express: action{type:["arrow_both_180"]} unless data storage present_box_express: action{type:["active_arrow"]} run function present_box_express:panel/set_to/arrow_both_270
execute if data storage present_box_express: action{type:["arrow_both_270"]} unless data storage present_box_express: action{type:["active_arrow"]} run function present_box_express:panel/set_to/empty

# 矢印を選択(サイド)
execute if data storage present_box_express: action{type:["active_arrow","arrow_1st"]} run function present_box_express:panel/set_to/active_arrow_2nd
execute if data storage present_box_express: action{type:["active_arrow","arrow_2nd"]} run function present_box_express:panel/set_to/active_arrow_both_0
execute if data storage present_box_express: action{type:["active_arrow","arrow_both_0"]} run function present_box_express:panel/set_to/active_arrow_both_90
execute if data storage present_box_express: action{type:["active_arrow","arrow_both_90"]} run function present_box_express:panel/set_to/active_arrow_both_180
execute if data storage present_box_express: action{type:["active_arrow","arrow_both_180"]} run function present_box_express:panel/set_to/active_arrow_both_270
execute if data storage present_box_express: action{type:["active_arrow","arrow_both_270"]} run function present_box_express:panel/set_to/side_empty
execute if data storage present_box_express: action{type:["side_empty"]} run function present_box_express:panel/set_to/active_arrow_1st

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/edit
