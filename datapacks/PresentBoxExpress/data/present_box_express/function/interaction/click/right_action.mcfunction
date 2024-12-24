### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# 右クリックの時
## waiting状態の時
# 削除
execute if data storage present_box_express: action{type:["stage"],state:"waiting"} unless data storage present_box_express: action{type:["locked"]} run function present_box_express:remove

## select_panel状態の時
# パネル回転
execute if data storage present_box_express: action{type:["active_arrow"],state:"select_panel"} run function present_box_express:transition/rotate_panel/

## select_panel状態の時
# ステージ/リセット
execute if data storage present_box_express: action{type:["bell"],state:"select_panel"} run function present_box_express:transition/select_panel_to_select_stage/

## stop状態の時
# ステージ
execute unless data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: action{state:"stop",type:["bell"]} run function present_box_express:transition/stop_to_select_stage/

## edit状態の時
# パネル回転
execute if data storage present_box_express: action{state:"edit"} if entity @s[tag=!stage,tag=!bell] run function present_box_express:transition/rotate_panel/
# ステージ
execute unless data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: action{state:"edit",type:["bell"]} run function present_box_express:transition/edit_to_select_stage/

function present_box_express:game_data/save/

# ロック状態ならselect_stageをスキップする
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s[tag=locked] run function present_box_express:interaction/click/skip_select_stage
