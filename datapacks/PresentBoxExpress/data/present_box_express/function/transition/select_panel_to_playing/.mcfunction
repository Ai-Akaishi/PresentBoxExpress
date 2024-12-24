### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## スタートする
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1

data modify storage present_box_express: game_data.current.state set value "playing"
data modify storage present_box_express: game_data.current.history set value []

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/playing
