### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# クリックの時
## waiting状態の時
execute if data storage present_box_express: action{type:["stage"],state:"waiting"} run function present_box_express:transition/waiting_to_select_stage/

## select_stage状態の時
# 次のステージへ
execute if data storage present_box_express: action{type:["right"],state:"select_stage"} run function present_box_express:transition/move_stage/next/
# 前のステージ
execute if data storage present_box_express: action{type:["left"],state:"select_stage"} run function present_box_express:transition/move_stage/previous/
# 決定
execute unless data storage present_box_express: game_data.current.stage.edit_mode if data storage present_box_express: action{type:["confirm"],state:"select_stage"} run function present_box_express:transition/select_stage_to_select_panel/
execute if data storage present_box_express: game_data.current.stage.edit_mode if data storage present_box_express: action{type:["confirm"],state:"select_stage"} run function present_box_express:transition/select_stage_to_edit/

## select_panel状態の時
# パネル選択
execute if data storage present_box_express: action{type:["active_arrow"],state:"select_panel"} run function present_box_express:transition/select_panel_to_select_place/
# スタート
execute if data storage present_box_express: action{type:["bell"],state:"select_panel"} run function present_box_express:transition/select_panel_to_playing/

## select_place状態の時
# 場所選択
execute if data storage present_box_express: action{type:["place"],state:"select_place"} run function present_box_express:transition/select_place_to_select_panel/
# パネル選択
execute if data storage present_box_express: action{type:["active_arrow"],state:"select_place"} run function present_box_express:transition/select_place_to_select_panel/

## stop状態の時
# リセット
execute unless data storage present_box_express: game_data.current.stage.edit_mode if data storage present_box_express: action{type:["bell"],state:"stop"} run function present_box_express:transition/stop_to_select_panel/
# リセット
execute if data storage present_box_express: game_data.current.stage.edit_mode if data storage present_box_express: action{type:["bell"],state:"stop"} run function present_box_express:transition/stop_to_edit/

## edit状態の時
execute if data storage present_box_express: action{type:["bell"],state:"edit"} run function present_box_express:transition/edit_to_select_panel/
execute if data storage present_box_express: action{state:"edit"} unless data storage present_box_express: action{type:["bell"]} run function present_box_express:transition/edit/

function present_box_express:game_data/save/

# ロック状態ならselect_stageをスキップする
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s[tag=locked] run function present_box_express:interaction/click/skip_select_stage
