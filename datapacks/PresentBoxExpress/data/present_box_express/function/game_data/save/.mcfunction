### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# ゲームデータの読み込み
data modify storage present_box_express: _ set value {}
execute store result storage present_box_express: _.number int 1 run scoreboard players get #Current PresentBoxExpressInstanceId

function present_box_express:game_data/save/-m with storage present_box_express: _
