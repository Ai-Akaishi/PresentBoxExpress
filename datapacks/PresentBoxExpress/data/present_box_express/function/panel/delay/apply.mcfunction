### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.
## 反映を遅らせている描画を適用する

data modify entity @s {} merge from entity @s item.components."minecraft:custom_data".delayed_data
tag @s remove PresentBoxExpressDelay
