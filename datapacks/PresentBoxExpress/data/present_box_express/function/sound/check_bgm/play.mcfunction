### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## BGMを再生
playsound present_box_express:game_music record @a ~ ~ ~ 1 1

## 次に再生する時間を設定
execute store result storage present_box_express: game_data.current.next_play_time int 1 run scoreboard players add #Current PresentBoxExpressSound 1843

## データを保存
function present_box_express:game_data/save/
