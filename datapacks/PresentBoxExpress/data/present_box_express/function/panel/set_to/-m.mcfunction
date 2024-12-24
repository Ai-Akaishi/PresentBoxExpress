### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

$data merge entity @s {width:$(width)f,height:$(height)f,Tags:["PresentBoxExpress","$(custom_model_data)"]}
$execute on passengers run data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["$(custom_model_data)"]},"minecraft:custom_data":{delayed_data:{transformation:{scale:[$(scale)f,$(scale)f,$(scale)f]},interpolation_duration:5,start_interpolation:0},delay:$(delay)}}},transformation:{scale:[0f, 0f, 0f],translation:[0f,$(offset)f,0f]},interpolation_duration:0,start_interpolation:0,Tags:["PresentBoxExpress","PresentBoxExpressDelay"]}
$data modify storage present_box_express: _ set value $(extra_tags)
data modify entity @s Tags append from storage present_box_express: _[]
