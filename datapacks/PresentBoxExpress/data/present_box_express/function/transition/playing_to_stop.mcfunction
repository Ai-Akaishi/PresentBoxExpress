### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 成功時で、editモードなら、ステージ情報を出力する
execute if data storage present_box_express: {clear:true} if data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:out_passphrase/

## 進行を止める
execute if data storage present_box_express: {clear:true} run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
execute if data storage present_box_express: {clear:true} run title @a[distance=..5] title {"text":"チャレンジ成功","color":"green","bold":true}
execute unless data storage present_box_express: {clear:true} run playsound minecraft:entity.evoker.prepare_wololo master @a ~ ~ ~ 1 1
execute unless data storage present_box_express: {clear:true} run title @a[distance=..5] title {"text":"チャレンジ失敗","color":"red","bold":true}

data modify storage present_box_express: game_data.current.state set value "stop"

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/stop
