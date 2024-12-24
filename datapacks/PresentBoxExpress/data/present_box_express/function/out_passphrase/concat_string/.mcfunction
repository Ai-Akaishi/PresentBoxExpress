### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage present_box_express: _ set value {ret:""}
data modify storage present_box_express: _.list set from storage present_box_express: passphrase

execute if data storage present_box_express: _.list[0] run function present_box_express:out_passphrase/concat_string/loop

data modify storage present_box_express: passphrase set from storage present_box_express: _.ret
