### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage present_box_express: game_data.current.stage.locked run function present_box_express:panel/set_to/-m {width:1f,height:0.02f,scale:0.33f,offset:0.165f,custom_model_data:"stage_edit",delay:1,extra_tags:["stage","edit_mode","PresentBoxExpressCanFocus"]}

execute if data storage present_box_express: game_data.current.stage.locked run function present_box_express:panel/set_to/-m {width:1f,height:0.02f,scale:0.33f,offset:0.165f,custom_model_data:"stage_edit",delay:1,extra_tags:["stage","edit_mode","PresentBoxExpressCanFocus","locked"]}
