### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 回転
playsound minecraft:ui.loom.take_result master @a ~ ~ ~ 1 2
function present_box_express:panel/rotate

# # 入力受付状態を変更する
# execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/edit
