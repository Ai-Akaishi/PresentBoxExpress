### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## ステージ選択からパネル選択に移行する
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2

## ボタンを消す
execute as @e[type=interaction,tag=PresentBoxExpress,tag=button] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/void

data modify storage present_box_express: game_data.current.state set value "select_panel"

# 鐘を召喚する
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s positioned ^1.00 ^0.125 ^0.75 run function present_box_express:panel/summon-m {type:"bell"}

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_panel
