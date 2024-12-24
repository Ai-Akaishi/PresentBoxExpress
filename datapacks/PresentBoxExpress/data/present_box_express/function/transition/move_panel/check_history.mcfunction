### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 生きていたらヒストリーチェック
function present_box_express:transition/select_panel_to_playing/get_allays/
data modify storage present_box_express: _ set value {a:0, b:0}
data modify storage present_box_express: history set from storage present_box_express: game_data.current.history
execute store result storage present_box_express: _.a int 1 if data storage present_box_express: history[]
execute store result storage present_box_express: _.b int 1 run data modify storage present_box_express: history[] set from storage present_box_express: allays
data modify storage present_box_express: _{a:0}.b set value 0

# tellraw @a ""
# tellraw @a {"storage": "present_box_express:", "nbt": "game_data.current.history"}
# tellraw @a {"storage": "present_box_express:", "nbt": "history"}
# tellraw @a {"storage": "present_box_express:", "nbt": "allays"}
# tellraw @a {"storage": "present_box_express:", "nbt": "_"}
# # data modify storage present_box_express: _.c set value true

execute store result storage present_box_express: _.c byte 1 run data modify storage present_box_express: _.a set from storage present_box_express: _.b

## 既にあった状態なら終了
execute if data storage present_box_express: _{c:true} run data modify storage present_box_express: alive set value false
## ない状態ならヒストリーに追加
execute if data storage present_box_express: _{c:false} run data modify storage present_box_express: game_data.current.history append from storage present_box_express: allays
function present_box_express:game_data/save/
