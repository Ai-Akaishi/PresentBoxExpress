### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage present_box_express: passphrase set from storage present_box_express: passphrases[-1]

data modify storage code: ciphertext set value []
execute unless data storage present_box_express: {passphrase:""} run function present_box_express:load_from_passphrase/split

function #code:decryption

execute unless data storage code: deciphertext run tellraw @s ["",{"text":"合言葉が解読できませんでした。: ","color":"red","bold":true},{"storage": "present_box_express:", "nbt": "passphrases[-1]"}]

execute if data storage code: deciphertext run function present_box_express:load_from_passphrase/read/

data remove storage present_box_express: passphrases[-1]
execute if data storage present_box_express: passphrases[-1] run function present_box_express:load_from_passphrase/loop


# data modify storage : _ set value [\
# 0,0,0,0,0,0,0,0,0,\
# 0,0,0,0,0,0,0,0,0,\
# 0,0,0,0,0,0,0,0,0,\
# 0,7,0,0,1,0,0,2,0,\
# 0,0,0,0,0,0,0,0,0,\
# 0,0,0,0,0,0,0,0,0,\
# 0,0,0,0,0,0,0,0,0,\
# 37,37,0,60,60,0,60,0,0]
