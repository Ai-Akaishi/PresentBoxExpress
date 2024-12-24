### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## ステージ選択からパネル選択に移行する
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2

## ここで、盤面を保存
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/edit_to_select_panel/save_panels/

data modify storage present_box_express: game_data.current.state set value "select_panel"

## emptyの変換
execute as @e[type=interaction,tag=PresentBoxExpress,tag=empty,tag=!side_empty] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/empty
execute as @e[type=interaction,tag=PresentBoxExpress,tag=empty,tag=side_empty] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/side_empty

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_panel
