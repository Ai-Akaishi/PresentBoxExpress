### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# ステージ選択状態の時の、入力受付状態を設定する
tag @s remove PresentBoxExpressCanFocus
tag @s remove selected
execute on passengers run data modify entity @s Glowing set value false
execute on passengers run data modify entity @s glow_color_override set value -1

tag @s[tag=left] add PresentBoxExpressCanFocus
tag @s[tag=confirm] add PresentBoxExpressCanFocus
tag @s[tag=right] add PresentBoxExpressCanFocus
