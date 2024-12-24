### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## パネル選択から場所選択に移行する
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 2

data modify storage present_box_express: game_data.current.state set value "select_place"

# emptyをplaceに変換する
execute as @e[type=interaction,tag=PresentBoxExpress,tag=empty] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/place

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_place

# 選んでるパネルのGlowing設定を上書きする
execute on passengers run data modify entity @s Glowing set value true
execute on passengers run data modify entity @s glow_color_override set value 16514816
tag @s add selected
