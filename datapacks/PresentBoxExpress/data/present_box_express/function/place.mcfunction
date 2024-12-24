### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## インスタンスID設定
execute store result score #Current PresentBoxExpressInstanceId run scoreboard players add #Last PresentBoxExpressInstanceId 1
## ゲームデータ初期化
data modify storage present_box_express: game_data.current set value {state:"waiting",stage:{number:0,panels:[]}}
function present_box_express:game_data/save/
## 召喚
execute rotated ~180 0 run function present_box_express:panel/summon-m {type:"waiting"}
