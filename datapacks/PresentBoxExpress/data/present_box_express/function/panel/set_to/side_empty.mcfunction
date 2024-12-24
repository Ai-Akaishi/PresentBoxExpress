### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage present_box_express: game_data.current{state:"edit"} run function present_box_express:panel/set_to/-m {width:0.125f,height:0.0078125f,scale:0.125f,offset:0.0546875f,custom_model_data:"empty",delay:5,extra_tags:["side_empty"]}

execute if data storage present_box_express: game_data.current{state:"edit"} run function present_box_express:panel/set_to/-m {width:0.125f,height:0.0078125f,scale:0.125f,offset:0.0546875f,custom_model_data:"panel_alpha",delay:5,extra_tags:["empty","side_empty"]}
