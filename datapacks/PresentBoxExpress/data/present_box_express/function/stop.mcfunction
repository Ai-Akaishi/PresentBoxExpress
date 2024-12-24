### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## game_dataを取得
scoreboard players operation #Current PresentBoxExpressInstanceId = @s PresentBoxExpressInstanceId
function present_box_express:game_data/load/

## 終わらせる
function present_box_express:transition/playing_to_stop

## セーブ
function present_box_express:game_data/save/
