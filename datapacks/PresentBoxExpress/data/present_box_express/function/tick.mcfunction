### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## プレイ中のゲームの近くに人がいなくなったら、ゲームを終わらせる
execute as @e[type=interaction,tag=PresentBoxExpress,tag=on_playing] at @s unless entity @p[distance=..4] run function present_box_express:quit

## 遅らせる描画を開始する
execute as @e[type=item_display,tag=PresentBoxExpress,tag=PresentBoxExpressDelay] run function present_box_express:panel/delay/

## フォーカスチェックとかするとこ
execute as @e[type=interaction,tag=PresentBoxExpressCanFocus] at @s run tag @a add PresentBoxExpressCheckMessage
execute as @e[type=interaction,tag=PresentBoxExpressCanFocus] at @s run function present_box_express:interaction/focus_check/
execute as @a[tag=PresentBoxExpressCheckMessage] run function present_box_express:interaction/focus_check/no_message

function present_box_express:sound/
