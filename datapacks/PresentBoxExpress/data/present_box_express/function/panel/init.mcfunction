### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

tp @s ~ ~ ~ ~ ~
scoreboard players operation @s PresentBoxExpressInstanceId = #Current PresentBoxExpressInstanceId

# data modify storage present_box_express: rotation set from entity @s Rotation
# execute on passengers run data modify entity @s Rotation set from storage present_box_express: rotation
