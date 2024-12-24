### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s ["",{"text":"ステージを追加しました。: ","color":"green","bold":true},{"storage": "present_box_express:", "nbt": "passphrases[-1]"}]
data modify storage present_box_express: game_data.stages append from storage present_box_express: game_data.stages[-1]
execute store result storage present_box_express: game_data.stages[-1].number int -1 run data get storage present_box_express: game_data.stages[-1].number -1.000000001
data modify storage present_box_express: game_data.stages[-1].panels set from storage present_box_express: panels
