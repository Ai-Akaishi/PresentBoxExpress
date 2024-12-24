### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## game_dataを取得
scoreboard players operation #Current PresentBoxExpressInstanceId = @s PresentBoxExpressInstanceId
function present_box_express:game_data/load/
## アクションタイプを取得
data modify storage present_box_express: action set value {side:"none",state:"none",type:"none"}
data modify storage present_box_express: action.state set from storage present_box_express: game_data.current.state
data modify storage present_box_express: action.type set from entity @s Tags
