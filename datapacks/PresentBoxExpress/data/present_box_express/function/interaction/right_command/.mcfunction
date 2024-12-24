## 右クリックの時のコマンド呼び出し
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage present_box_express: macro_args set value {before_command:"function present_box_express:interaction/noop",command:"function present_box_express:interaction/noop", after_command:"function present_box_express:interaction/noop"}
execute on passengers run data modify storage present_box_express: macro_args merge from entity @s item.components."minecraft:custom_data".right_click

function present_box_express:interaction/right_command/-m with storage present_box_express: macro_args

data remove entity @s interaction
