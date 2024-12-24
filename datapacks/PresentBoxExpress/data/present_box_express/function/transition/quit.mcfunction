### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# ステージを戻す
execute as @e[type=interaction,tag=PresentBoxExpress,tag=!stage] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/void
execute as @e[type=interaction,tag=PresentBoxExpress,tag=stage] if predicate present_box_express:is_current_part run function present_box_express:panel/set_to/waiting

data modify storage present_box_express: game_data.current.state set value "waiting"

# 入力受付状態を変更する
execute as @e[type=interaction,tag=PresentBoxExpress] if predicate present_box_express:is_current_part run function present_box_express:panel/set_state/waiting

# BGMの状態を把握できないので、ゲームを閉じた時は、近くにプレイ中のゲームがないプレイヤー全員から音を消す
execute as @a at @s unless entity @n[type=interaction,tag=PresentBoxExpress,tag=on_playing,distance=..4] run function present_box_express:sound/stop
# 次に開いたときにBGMが鳴るようにする
data modify storage present_box_express: game_data.current.next_play_time set value 0
