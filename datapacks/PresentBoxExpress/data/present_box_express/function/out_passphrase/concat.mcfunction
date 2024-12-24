### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players set #_ PresentBoxExpress 0

execute store result score #__ PresentBoxExpress run data get storage present_box_express: _[4] 24010000
scoreboard players operation #_ PresentBoxExpress += #__ PresentBoxExpress
execute store result score #__ PresentBoxExpress run data get storage present_box_express: _[3] 343000
scoreboard players operation #_ PresentBoxExpress += #__ PresentBoxExpress
execute store result score #__ PresentBoxExpress run data get storage present_box_express: _[2] 4900
scoreboard players operation #_ PresentBoxExpress += #__ PresentBoxExpress
execute store result score #__ PresentBoxExpress run data get storage present_box_express: _[1] 70
scoreboard players operation #_ PresentBoxExpress += #__ PresentBoxExpress
execute store result score #__ PresentBoxExpress run data get storage present_box_express: _[0]
scoreboard players operation #_ PresentBoxExpress += #__ PresentBoxExpress

data modify storage code: plaintext append value 0
execute store result storage code: plaintext[-1] int 1 run scoreboard players get #_ PresentBoxExpress
data remove storage present_box_express: _[0]
data remove storage present_box_express: _[0]
data remove storage present_box_express: _[0]
data remove storage present_box_express: _[0]
data remove storage present_box_express: _[0]

execute if data storage present_box_express: _[0] run function present_box_express:out_passphrase/concat
