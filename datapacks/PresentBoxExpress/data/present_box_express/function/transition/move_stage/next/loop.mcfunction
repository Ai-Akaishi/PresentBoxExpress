### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## ステージ番号が一致する？
data modify storage present_box_express: _ set from storage present_box_express: stages[0].number
execute store result storage present_box_express: _ byte 1 run data modify storage present_box_express: _ set from storage present_box_express: game_data.current.stage.number
## 一致しない場合は、削除してループする
execute if data storage present_box_express: {_:true} run data remove storage present_box_express: stages[0]
execute if data storage present_box_express: {_:true} if data storage present_box_express: stages[0] run function present_box_express:transition/move_stage/next/loop
