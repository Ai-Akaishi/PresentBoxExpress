### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score #_ PresentBoxExpress run data get storage present_box_express: _[0]

## １つめ
data modify storage present_box_express: panels append value 0
scoreboard players operation #__ PresentBoxExpress = #_ PresentBoxExpress
execute store result storage present_box_express: panels[-1] int 1 run scoreboard players operation #__ PresentBoxExpress %= #70 PresentBoxExpress
scoreboard players operation #_ PresentBoxExpress /= #70 PresentBoxExpress
# ２つめ
data modify storage present_box_express: panels append value 0
scoreboard players operation #__ PresentBoxExpress = #_ PresentBoxExpress
execute store result storage present_box_express: panels[-1] int 1 run scoreboard players operation #__ PresentBoxExpress %= #70 PresentBoxExpress
scoreboard players operation #_ PresentBoxExpress /= #70 PresentBoxExpress
## ３つめ
data modify storage present_box_express: panels append value 0
scoreboard players operation #__ PresentBoxExpress = #_ PresentBoxExpress
execute store result storage present_box_express: panels[-1] int 1 run scoreboard players operation #__ PresentBoxExpress %= #70 PresentBoxExpress
scoreboard players operation #_ PresentBoxExpress /= #70 PresentBoxExpress
## ４つめ
data modify storage present_box_express: panels append value 0
scoreboard players operation #__ PresentBoxExpress = #_ PresentBoxExpress
execute store result storage present_box_express: panels[-1] int 1 run scoreboard players operation #__ PresentBoxExpress %= #70 PresentBoxExpress
scoreboard players operation #_ PresentBoxExpress /= #70 PresentBoxExpress
## ５つめ
data modify storage present_box_express: panels append value 0
scoreboard players operation #__ PresentBoxExpress = #_ PresentBoxExpress
execute store result storage present_box_express: panels[-1] int 1 run scoreboard players operation #__ PresentBoxExpress %= #70 PresentBoxExpress

data remove storage present_box_express: _[0]
execute if data storage present_box_express: _[0] run function present_box_express:load_from_passphrase/read/loop
