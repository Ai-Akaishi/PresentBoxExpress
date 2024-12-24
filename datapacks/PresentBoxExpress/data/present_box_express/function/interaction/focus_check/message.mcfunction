### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 見ているプレイヤーに対する処理
data modify storage present_box_express: on_focus set value true

## instance_idからゲームの状態を取得する
execute store result score #Current PresentBoxExpressInstanceId run data get storage present_box_express: message.instance_id
function present_box_express:game_data/load/
data modify storage present_box_express: message.state set from storage present_box_express: game_data.current.state

## stateとtypeに合わせたメッセージを出す

execute if data storage present_box_express: message{type:["stage"]} unless data storage present_box_express: game_data.current.stage.edit_mode run data modify storage present_box_express: message.string set value ["プレイ"]
execute if data storage present_box_express: message{type:["stage"]} if data storage present_box_express: game_data.current.stage.edit_mode run data modify storage present_box_express: message.string set value ["作成"]
execute if data storage present_box_express: message{type:["stage"]} unless data storage present_box_express: message{type:["locked"]} run data modify storage present_box_express: message.string append value "削除"

execute if data storage present_box_express: message{type:["left"]} run data modify storage present_box_express: message.string set value ["前のステージ"]
execute if data storage present_box_express: message{type:["confirm"]} unless data storage present_box_express: game_data.current.stage.edit_mode run data modify storage present_box_express: message.string set value ["このステージをプレイ"]
execute if data storage present_box_express: message{type:["confirm"]} if data storage present_box_express: game_data.current.stage.edit_mode run data modify storage present_box_express: message.string set value ["このステージから作成"]
execute if data storage present_box_express: message{type:["right"]} run data modify storage present_box_express: message.string set value ["次のステージ"]

execute unless data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: message{state:"select_panel",type:["bell"]} run data modify storage present_box_express: message.string set value ["スタート","ステージ"]
execute if data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: message{state:"select_panel",type:["bell"]} run data modify storage present_box_express: message.string set value ["スタート","リセット"]
execute if data storage present_box_express: message{state:"select_panel",type:["active_arrow"]} run data modify storage present_box_express: message.string set value ["選択","回転"]

execute if data storage present_box_express: message{state:"select_place",type:["place"]} run data modify storage present_box_express: message.string set value ["設置"]
execute if data storage present_box_express: message{state:"select_place",type:["active_arrow"]} run data modify storage present_box_express: message.string set value ["設置"]

execute unless data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: message{state:"stop",type:["bell"]} run data modify storage present_box_express: message.string set value ["リトライ","ステージ"]
execute unless data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: message{state:"edit",type:["bell"]} run data modify storage present_box_express: message.string set value ["チェック","ステージ"]

execute if data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: message{state:"stop",type:["bell"]} run data modify storage present_box_express: message.string set value ["リトライ"]
execute if data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: message{state:"edit",type:["bell"]} run data modify storage present_box_express: message.string set value ["チェック"]

execute if data storage present_box_express: message{state:"edit"} unless data storage present_box_express: message{type:["bell"]} run data modify storage present_box_express: message.string set value ["変更","回転"]

execute unless data storage present_box_express: message.string[1] run title @s actionbar ["<<< ",{"storage": "present_box_express:", "nbt": "message.string[0]","bold": true}," >>>"]
execute if data storage present_box_express: message.string[1] run title @s actionbar ["<<< ",{"storage": "present_box_express:", "nbt": "message.string[0]","bold": true}," | ",{"storage": "present_box_express:", "nbt": "message.string[1]","bold": true}," >>>"]

tag @s remove PresentBoxExpressCheckMessage
