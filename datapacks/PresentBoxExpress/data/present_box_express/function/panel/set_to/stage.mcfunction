### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

execute unless data storage present_box_express: game_data.current.stage.locked unless data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:panel/set_to/-m {width:3f,height:0.0625f,scale:1f,offset:0.5f,custom_model_data:"stage",delay:1,extra_tags:[]}

execute unless data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:panel/set_to/-m {width:3f,height:0.0625f,scale:1f,offset:0.5f,custom_model_data:"stage_edit",delay:1,extra_tags:["stage","edit_mode"]}

execute if data storage present_box_express: game_data.current.stage.locked unless data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:panel/set_to/-m {width:3f,height:0.0625f,scale:1f,offset:0.5f,custom_model_data:"stage",delay:1,extra_tags:["locked"]}

execute if data storage present_box_express: game_data.current.stage.locked if data storage present_box_express: game_data.current.stage.edit_mode run function present_box_express:panel/set_to/-m {width:3f,height:0.0625f,scale:1f,offset:0.5f,custom_model_data:"stage_edit",delay:1,extra_tags:["stage","edit_mode","locked"]}
