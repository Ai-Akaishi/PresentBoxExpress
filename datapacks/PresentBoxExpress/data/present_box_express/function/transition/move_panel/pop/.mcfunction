### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

## 
tp @s ^ ^0.05 ^0.125
tag @s add on_moving

execute on passengers at @s run data modify entity @s transformation.left_rotation set value {axis:[1f,0f,0f],angle:-0.2f}
execute on passengers at @s run data modify entity @s start_interpolation set value 0
