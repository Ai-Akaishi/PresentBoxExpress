### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## game_dataを取得
scoreboard players operation #Current PresentBoxExpressInstanceId = @s PresentBoxExpressInstanceId
function present_box_express:game_data/load/

## ゲーム状態が、playingだったら、定期的に
execute if data storage present_box_express: game_data.current{state:"playing"} if data storage present_box_express: {sound_tick:0} run function present_box_express:transition/move_panel/0
execute if data storage present_box_express: game_data.current{state:"playing"} if data storage present_box_express: {sound_tick:4} run function present_box_express:transition/move_panel/4
execute if data storage present_box_express: game_data.current{state:"playing"} if data storage present_box_express: {sound_tick:7} run function present_box_express:transition/move_panel/7

## BGMは、sound_tickが0の時に、BGM開始時間を取得して、1843tick経っていたら再生
execute if data storage present_box_express: {sound_tick:0} run function present_box_express:sound/check_bgm/
