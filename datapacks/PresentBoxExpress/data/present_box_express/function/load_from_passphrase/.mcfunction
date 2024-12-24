### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage present_box_express: passphrases set value []
data modify storage present_box_express: passphrases append from entity @s SelectedItem{id:"minecraft:writable_book"}.components."minecraft:writable_book_content".pages[].raw

execute if data storage present_box_express: passphrases[-1] run function present_box_express:load_from_passphrase/loop
