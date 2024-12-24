### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# ロック状態ならselect_stageをスキップする
execute if data storage present_box_express: game_data.current{state:"select_stage"} unless data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:transition/select_stage_to_select_panel/
execute if data storage present_box_express: game_data.current{state:"select_stage"} if data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:transition/select_stage_to_edit/

function present_box_express:game_data/save/
