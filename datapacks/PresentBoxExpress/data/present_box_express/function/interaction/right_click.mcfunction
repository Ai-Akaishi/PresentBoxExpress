### 右クリックしたとき
### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s add InvokerPlayer
	execute as @e[type=interaction,tag=PresentBoxExpress,sort=nearest] if function present_box_express:interaction/is_interacted at @s run function present_box_express:interaction/right_command/
tag @s remove InvokerPlayer

advancement revoke @s only present_box_express:interaction/right_click
