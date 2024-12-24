### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage code: plaintext set value []
data modify storage present_box_express: _ set from storage present_box_express: game_data.current.stage.panels

## １つ余分にいれる
data modify storage present_box_express: _ append value 0
# data modify storage present_box_express: _ append value 0
# data modify storage present_box_express: _ append value 0

execute if data storage present_box_express: _[0] run function present_box_express:out_passphrase/concat

function #code:encryption
data modify storage present_box_express: passphrase set from storage code: ciphertext

function present_box_express:out_passphrase/concat_string/

data modify storage present_box_express: _ set value {}
data modify storage present_box_express: _.passphrase set from storage present_box_express: passphrase

function present_box_express:out_passphrase/-m with storage present_box_express: _
