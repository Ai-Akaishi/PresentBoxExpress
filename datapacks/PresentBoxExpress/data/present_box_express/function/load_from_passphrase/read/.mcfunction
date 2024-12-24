### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage present_box_express: panels set value []
data remove storage present_box_express: _
data modify storage present_box_express: _ set from storage code: deciphertext
scoreboard players set #70 PresentBoxExpress 70

execute if data storage present_box_express: _[0] run function present_box_express:load_from_passphrase/read/loop

## １つあまり
data remove storage present_box_express: panels[-1]
# data remove storage present_box_express: panels[-1]
# data remove storage present_box_express: panels[-1]

# 読み取れたら、既に登録されているかどうかを確認する
data modify storage present_box_express: _ set value []
data modify storage present_box_express: _ append from storage present_box_express: game_data.stages[].panels

execute store result storage present_box_express: count.1 int 1 if data storage present_box_express: _[]
execute store result storage present_box_express: count.2 int 1 run data modify storage present_box_express: _[] set from storage present_box_express: panels
execute store result storage present_box_express: _ byte 1 run data modify storage present_box_express: count.1 set from storage present_box_express: count.2

execute if data storage present_box_express: {_:true} run tellraw @s ["",{"text":"既に登録されています。: ","color":"gray","bold":true},{"storage": "present_box_express:", "nbt": "passphrases[-1]"}]
execute unless data storage present_box_express: {_:true} run function present_box_express:load_from_passphrase/add_stage
