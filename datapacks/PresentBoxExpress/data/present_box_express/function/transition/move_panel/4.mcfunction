### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 
playsound minecraft:block.amethyst_block.step.5 hostile @a ~ ~ ~ 1 1

## 動ける駒があったら、矢印に合わせて回転させる
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=!on_moving,tag=!on_goal] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/move_panel/apply_arrow/
## 動ける駒があったら、前に浮かせる
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=!on_moving,tag=!on_goal] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/move_panel/pop/

# execute if data storage present_box_express: game_data.current{state:"playing"} if data storage present_box_express: {sound_tick:0} run 
# execute if data storage present_box_express: game_data.current{state:"playing"} if data storage present_box_express: {sound_tick:4} run playsound minecraft:block.amethyst_block.step.5 hostile @a ~ ~ ~ 1 1
# execute if data storage present_box_express: game_data.current{state:"playing"} if data storage present_box_express: {sound_tick:7} run playsound minecraft:block.amethyst_block.step.5 hostile @a ~ ~ ~ 1 1
