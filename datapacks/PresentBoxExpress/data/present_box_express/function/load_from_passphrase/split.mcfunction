### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage code: ciphertext append string storage present_box_express: passphrase 0 1
data modify storage present_box_express: passphrase set string storage present_box_express: passphrase 1

execute unless data storage present_box_express: {passphrase:""} run function present_box_express:load_from_passphrase/split
