### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# プレイ状態の時の、入力受付状態を設定する
tag @s remove PresentBoxExpressCanFocus
tag @s remove selected
execute on passengers run data modify entity @s Glowing set value false
execute on passengers run data modify entity @s glow_color_override set value -1

tag @s[tag=bell] add PresentBoxExpressCanFocus
