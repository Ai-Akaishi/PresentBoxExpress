### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 場所選択からパネル選択に移行する
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.5

data modify storage present_box_express: game_data.current.state set value "select_panel"

## パネルを入れ替える！！
## 今のエンティティを、selected位置に移動させる
execute as @e[type=interaction,tag=PresentBoxExpress,tag=selected] if predicate present_box_express:is_current_part run data modify storage present_box_express: Pos set from entity @s Pos
data modify entity @s Pos set from storage present_box_express: Pos
## 現在位置に、selectedを移動させる
execute as @e[type=interaction,tag=PresentBoxExpress,tag=selected] if predicate present_box_express:is_current_part run tp @s ~ ~ ~

# placeをemptyに変換する
execute as @e[type=interaction,tag=PresentBoxExpress,tag=place] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/empty

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_panel
