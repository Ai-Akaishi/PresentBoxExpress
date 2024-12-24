### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 観られているかどうかチェックする

## 見てるプレイヤーへのメッセージを設定する
data modify storage present_box_express: message set value {}
data modify storage present_box_express: message.type set from entity @s Tags
execute store result storage present_box_express: message.instance_id int 1 run scoreboard players get @s PresentBoxExpressInstanceId

tag @s add PresentBoxExpressFocusCheck

data modify storage present_box_express: on_focus set value false
execute as @a[distance=..4] if predicate present_box_express:on_focus run function present_box_express:interaction/focus_check/message

## Glowingを調整する
execute on passengers run data modify entity @s Glowing set value true
execute unless entity @s[tag=selected] if data storage present_box_express: {on_focus:false} on passengers run data modify entity @s Glowing set value false
# execute if data storage present_box_express: {on_focus:false} on passengers if data entity @s glow_color_override run data modify entity @s Glowing set value true
# execute if data storage present_box_express: {on_focus:true} on passengers run data modify entity @s Glowing set value true

tag @s remove PresentBoxExpressFocusCheck
