### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:interaction ~ ~ ~ {width:0.001f,height:0.001f,Tags:["PresentBoxExpress","PresentBoxExpressInitializing"],Passengers:[\
	{id:item_display,billboard:"fixed",item:{id:"minecraft:red_stained_glass",count:1,components:{custom_model_data:{strings:["empty"]},custom_data:{left_click:{before_command:"function present_box_express:interaction/click/load_game_state",command:"function present_box_express:interaction/click/check_player",after_command:"function present_box_express:interaction/click/left_action"},right_click:{before_command:"function present_box_express:interaction/click/load_game_state",command:"function present_box_express:interaction/click/check_player",after_command:"function present_box_express:interaction/click/right_action"}}}},interpolation_duration:5,teleport_duration:5,transformation:{right_rotation:[0f, 0f, 0f, 1f],scale:[0f, 0f, 0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f]},Tags:["PresentBoxExpress"]}]}
execute as @n[type=interaction,tag=PresentBoxExpressInitializing,distance=0] run function present_box_express:panel/init
$execute as @n[type=interaction,tag=PresentBoxExpressInitializing,distance=0] run function present_box_express:panel/set_to/$(type)
