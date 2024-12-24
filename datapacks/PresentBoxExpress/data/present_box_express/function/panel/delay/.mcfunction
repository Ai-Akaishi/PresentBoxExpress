### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.
## 反映を遅らせている描画を適用する

data modify storage present_box_express: custom_data set from entity @s item.components."minecraft:custom_data"
## カウントダウン
execute store result storage present_box_express: custom_data.delay int 0.9999999999 run data get storage present_box_express: custom_data.delay
## もしもカウントが０だったらdelayを消す
data remove storage present_box_express: custom_data{delay:0}.delay
## データ更新
data modify entity @s item.components."minecraft:custom_data" set from storage present_box_express: custom_data
## delayがなくなっていたら、描画を反映
execute unless data storage present_box_express: custom_data.delay run function present_box_express:panel/delay/apply
