### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# 
playsound minecraft:ui.loom.select_pattern master @a ~ ~ ~ 1 0.707

# {state:"waiting",stage:{number:0,panels:[]}}
## ステージが選択されていない場合、1番を読み込む
execute if data storage present_box_express: game_data.current.stage{number:0} if entity @s[tag=!edit_mode] run data modify storage present_box_express: game_data.current.stage set from storage present_box_express: game_data.stages[0]
execute if data storage present_box_express: game_data.current.stage{number:0} if entity @s[tag=edit_mode] run data modify storage present_box_express: game_data.current.stage set value {number:0,panels:[\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	0,0,0,0,0,0,0,0,0,\
	60,60,60,60,60,60]}

## edit_modeの時は、edit_mode情報を入れておく
execute if entity @s[tag=edit_mode] run data modify storage present_box_express: game_data.current.stage.edit_mode set value true

## lockedの時は、lockedにしておく
data remove storage present_box_express: game_data.current.stage.locked
execute if entity @s[tag=locked] run data modify storage present_box_express: game_data.current.stage.locked set value true

## ステージを基準にして反映させる
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part at @s run function present_box_express:transition/waiting_to_select_stage/set_panels/

data modify storage present_box_express: game_data.current.state set value "select_stage"

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/select_stage
