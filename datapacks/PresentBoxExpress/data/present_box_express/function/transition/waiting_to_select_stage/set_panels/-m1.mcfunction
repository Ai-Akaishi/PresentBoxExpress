### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

$data modify storage present_box_express: panel set from storage present_box_express: const.coords[$(index)]
$data modify storage present_box_express: panel.id set from storage present_box_express: game_data.current.stage.panels[$(index)]
function present_box_express:transition/waiting_to_select_stage/set_panels/-m2 with storage present_box_express: panel
