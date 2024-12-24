### 左クリックしたとき
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s add InvokerPlayer
	execute as @e[type=interaction,tag=PresentBoxExpress,sort=nearest] if function present_box_express:interaction/is_attacked at @s run function present_box_express:interaction/left_command/
tag @s remove InvokerPlayer

advancement revoke @s only present_box_express:interaction/left_click
