### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 次に再生する時間を取得
data modify storage present_box_express: next_play_time set value 0
data modify storage present_box_express: next_play_time set from storage present_box_express: game_data.current.next_play_time

## 現在時間と比較する
execute store result score #Current PresentBoxExpressSound run time query gametime
execute store result score #_ PresentBoxExpressSound run data get storage present_box_express: next_play_time

## 現在時間が次に再生する時間を超えていたら
execute if score #_ PresentBoxExpressSound <= #Current PresentBoxExpressSound run function present_box_express:sound/check_bgm/play
