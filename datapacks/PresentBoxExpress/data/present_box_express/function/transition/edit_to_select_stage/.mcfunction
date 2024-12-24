### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## ステージ選択からパネル選択に移行する
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2

## ここで、盤面を保存
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/edit_to_select_panel/save_panels/

## 一旦ステージ以外を消す
execute as @e[type=interaction,tag=PresentBoxExpress,tag=!stage] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/void
## ステージを基準にして再召喚
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/waiting_to_select_stage/set_panels/

data modify storage present_box_express: game_data.current.state set value "select_stage"

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_stage
