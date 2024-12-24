### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# execute on passengers at @s run rotate @s ~ -80
tp @s ^ ^ ^-0.125
execute on passengers at @s run data modify entity @s transformation.left_rotation set value {axis:[1f,0f,0f],angle:-1.2f}
execute on passengers at @s run data modify entity @s start_interpolation set value 0

data modify storage present_box_express: alive set value false
