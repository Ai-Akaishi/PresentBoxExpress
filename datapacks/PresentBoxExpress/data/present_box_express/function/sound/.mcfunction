### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 105 -> 1200
## 35 -> 400
## 175 -> 2000
## 875 -> 10000

## ゲーム時間をBPMに合わせて変換
data remove storage present_box_express: _
execute store result storage present_box_express: _ int 0.35 run time query gametime
## sound_tickを取得
execute store result score #_ PresentBoxExpressSound run data get storage present_box_express: _
scoreboard players set #8 PresentBoxExpressSound 8
execute store result storage present_box_express: _ int 1 run scoreboard players operation #_ PresentBoxExpressSound %= #8 PresentBoxExpressSound

## 結果を保存しながら変化を検知
execute store result storage present_box_express: _ byte 1 run data modify storage present_box_express: sound_tick set from storage present_box_express: _

## 変化していた場合は、タイミングに応じて処理
execute if data storage present_box_express: {_:true} as @e[type=interaction,tag=PresentBoxExpress,tag=stage,tag=on_playing] at @s run function present_box_express:sound/fork
