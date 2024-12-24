### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 
playsound minecraft:block.amethyst_block.step.13 hostile @a ~ ~ ~ 1 1

## ゲームは生きている？
# 駒がないなら、ゲームは終了だよ
data modify storage present_box_express: alive set value false
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay] if predicate present_box_express:is_current_part run data modify storage present_box_express: alive set value true

## 移動前に、既にぶつかっている？？
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=on_moving] if predicate present_box_express:is_current_part if function present_box_express:transition/move_panel/is_crashed at @s run function present_box_express:transition/move_panel/crash_motion

## 動いてる途中の駒を、設置する(ここで移動)
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=on_moving] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/move_panel/place/

## 範囲外かどうかチェックする
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=!on_moving] if predicate present_box_express:is_current_part if function present_box_express:transition/move_panel/is_out_of_board at @s run function present_box_express:transition/move_panel/crash_motion

## 何かにぶつかっているかどうかチェックする
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=!on_moving] if predicate present_box_express:is_current_part if function present_box_express:transition/move_panel/is_crashed at @s run function present_box_express:transition/move_panel/crash_motion

## ゴールしているかどうかチェックする
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=!on_moving] if predicate present_box_express:is_current_part if function present_box_express:transition/move_panel/is_on_goal at @s run tag @s add on_goal

## ゴールしていない駒がないなら、ゲームは終了だよ
data modify storage present_box_express: clear set from storage present_box_express: alive
execute as @e[type=interaction,tag=PresentBoxExpress,tag=allay,tag=!on_goal] if predicate present_box_express:is_current_part run data modify storage present_box_express: clear set value false
execute if data storage present_box_express: {clear:true} run data modify storage present_box_express: alive set value false

## 生きていたらヒストリーチェック
execute if data storage present_box_express: {alive:true} run function present_box_express:transition/move_panel/check_history

## ゲームが死んでいたら止める
execute if data storage present_box_express: {alive:false} run function present_box_express:stop
