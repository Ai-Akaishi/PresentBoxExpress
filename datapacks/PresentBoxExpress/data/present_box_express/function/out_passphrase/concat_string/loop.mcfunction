### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage present_box_express: _.a set from storage present_box_express: _.list[0]
data remove storage present_box_express: _.list[0]

function present_box_express:out_passphrase/concat_string/loop-m with storage present_box_express: _

execute if data storage present_box_express: _.list[0] run function present_box_express:out_passphrase/concat_string/loop
