### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# ## プレイ中のプレイヤーによるものでなくwaiting/stageなら紐づける
# execute unless score @s PresentBoxExpressInstanceId = @s PresentBoxExpressInstanceId if data storage present_box_express: action{state:"waiting",type:"stage"} run scoreboard players operation @s PresentBoxExpressInstanceId = #Current PresentBoxExpressInstanceId
# ## 紐づいたプレイヤーじゃなければキャンセル
# execute unless score @s PresentBoxExpressInstanceId = #Current PresentBoxExpressInstanceId run data modify storage present_box_express: action.type set value "cancel"
