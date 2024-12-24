### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 何かにぶつかっているかどうか判定する
data modify storage present_box_express: _ set value []
## 同じ座標にあるパネルのタグを入れていく
tag @s add on_checking
execute at @s as @e[type=interaction,tag=PresentBoxExpress,distance=..0.01,tag=!on_checking] run data modify storage present_box_express: _ append from entity @s Tags[]
tag @s remove on_checking

## 別の駒にぶつかった
execute if data storage present_box_express: {_:["allay"]} run return 1
## 木にぶつかった
execute if data storage present_box_express: {_:["tree"]} run return 1
## 別のゴールに入っちゃった
execute if entity @s[tag=allay_1st] if data storage present_box_express: {_:["goal_2nd"]} run return 1
execute if entity @s[tag=allay_2nd] if data storage present_box_express: {_:["goal_1st"]} run return 1

return 0
