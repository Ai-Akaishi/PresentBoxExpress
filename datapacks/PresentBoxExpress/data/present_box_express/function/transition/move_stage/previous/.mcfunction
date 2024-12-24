### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# 前のステージに変更する
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 1

## ステージ候補を取り出して、現在のステージまでの番号を削除して、次のステージ番号を割り出す
data modify storage present_box_express: stages set from storage present_box_express: game_data.stages
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part if entity @s[tag=edit_mode] run data modify storage present_box_express: stages prepend value {number:0,panels:[\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	60,60,60,60,60,60]}

## ステージ番号が一致するまで再帰的に削除
execute if data storage present_box_express: stages[-1] run function present_box_express:transition/move_stage/previous/loop

## [-2]に次のステージが入っているはずなので、それを設定する
### [-2]がないとき
execute unless data storage present_box_express: stages[-2] run data modify storage present_box_express: game_data.current.stage set from storage present_box_express: game_data.stages[-1]
### [-2]があるとき
data modify storage present_box_express: game_data.current.stage set from storage present_box_express: stages[-2]

## edit_modeの時は、edit_mode情報を入れておく
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part if entity @s[tag=edit_mode] run data modify storage present_box_express: game_data.current.stage.edit_mode set value true

## 一旦ステージ以外を消す
execute as @e[type=interaction,tag=PresentBoxExpress,tag=!stage] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/void
## ステージを基準にして再召喚
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/waiting_to_select_stage/set_panels/

data modify storage present_box_express: game_data.current.state set value "select_stage"

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_stage
