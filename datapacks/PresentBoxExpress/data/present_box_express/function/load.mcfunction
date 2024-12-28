### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

function #trigger:register {name:"PresentBoxExpress", command:"function present_box_express:place"}
function #trigger:register {name:"PresentBoxExpress.Editor", command:"function present_box_express:place_on_edit_mode"}
function #trigger:register {name:"PresentBoxExpress.Load", command:"function present_box_express:load_from_passphrase/"}

scoreboard objectives add PresentBoxExpress dummy
scoreboard objectives add PresentBoxExpressSound dummy
scoreboard objectives add PresentBoxExpressInstanceId dummy

data modify storage present_box_express: game_data.default_stages set value [\
	{number:1,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,0,0,0,0,0,0,0,0,\
		0,7,0,0,0,0,1,0,0,\
		0,0,0,0,1,0,0,0,0,\
		0,0,0,0,0,0,0,2,0,\
		0,0,0,1,0,0,0,0,0,\
		0,0,0,0,0,0,0,0,0,\
		37,37,60,60,60,60]},\
	{number:2,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,0,0,0,0,0,0,0,0,\
		0,0,7,0,1,0,0,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,0,0,1,0,1,0,0,0,\
		0,0,0,0,0,0,2,1,0,\
		0,0,0,0,0,0,0,0,0,\
		37,37,36,60,60,60]},\
	{number:3,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,7,0,0,0,0,0,1,0,\
		0,0,1,1,0,0,0,0,0,\
		0,0,0,0,0,13,0,0,0,\
		0,0,0,0,1,0,0,0,0,\
		0,0,1,2,0,0,1,0,0,\
		0,0,0,0,0,0,0,0,0,\
		37,37,60,60,60,60]},\
	{number:4,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,7,0,0,0,0,0,0,0,\
		0,0,0,12,0,13,0,5,0,\
		0,0,0,0,0,0,0,0,0,\
		1,1,1,0,1,0,1,1,1,\
		0,0,0,0,0,0,0,0,0,\
		0,0,0,2,0,2,0,0,0,\
		37,37,36,60,60,60]},\
	{number:5,panels:[\
		0,0,0,0,8,1,0,0,0,\
		0,7,0,0,0,0,0,0,0,\
		0,0,0,0,0,2,0,1,0,\
		0,1,0,3,0,0,0,0,0,\
		0,0,0,1,3,0,10,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,0,0,0,0,0,0,0,0,\
		44,44,49,60,60,60]},\
	{number:6,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,20,0,0,5,0,0,21,0,\
		0,0,0,1,3,1,0,0,0,\
		0,0,0,2,0,2,0,0,0,\
		0,0,0,1,0,1,0,0,0,\
		0,23,0,7,0,11,0,22,0,\
		0,0,0,0,0,0,0,0,0,\
		56,51,51,60,60,60]},\
	{number:7,panels:[\
		0,0,0,0,3,1,0,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,7,0,0,28,0,0,9,0,\
		0,0,0,1,0,0,0,0,0,\
		0,0,0,1,0,0,0,0,0,\
		0,0,0,1,2,0,0,0,0,\
		53,54,54,53,60,60]},\
	{number:8,panels:[\	
		0,0,0,0,0,0,0,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,0,7,0,0,0,3,0,0,\
		0,0,7,0,0,0,2,0,0,\
		0,0,11,0,0,0,2,0,0,\
		0,0,0,1,0,0,0,0,0,\
		0,0,0,0,0,0,0,0,0,\
		53,53,47,56,60,60]},\
	{number:9,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,0,7,0,0,0,3,0,0,\
		0,0,7,12,1,15,2,0,0,\
		0,0,11,0,0,0,2,0,0,\
		0,0,0,1,0,0,0,0,0,\
		0,0,0,0,0,0,0,0,0,\
		43,43,56,53,60,60]},\
	{number:10,panels:[\
		0,1,0,0,0,0,0,0,0,\
		0,0,0,0,0,1,0,0,0,\
		0,0,4,0,1,2,13,0,0,\
		0,3,0,0,0,15,12,0,0,\
		0,0,0,3,0,9,2,10,0,\
		0,7,15,0,0,0,0,0,0,\
		0,0,0,0,1,0,0,0,0,\
		37,43,56,53,56,60]},\
	{number:11,panels:[\
		0,0,0,0,0,0,0,0,0,\
		0,0,3,0,21,1,2,0,0,\
		0,0,1,8,0,5,0,0,0,\
		0,0,20,0,23,0,22,0,0,\
		0,0,0,7,0,10,1,0,0,\
		0,0,3,1,23,0,2,0,0,\
		0,0,0,0,0,0,0,0,0,\
		41,43,36,53,56,60]},\
]

execute unless data storage present_box_express: game_data.stages run data modify storage present_box_express: game_data.stages set from storage present_box_express: game_data.default_stages

data modify storage present_box_express: const.coords set value [\
	{x:-1.25,z:-0.75},\
	{x:-1.00,z:-0.75},\
	{x:-0.75,z:-0.75},\
	{x:-0.50,z:-0.75},\
	{x:-0.25,z:-0.75},\
	{x:0.00,z:-0.75},\
	{x:0.25,z:-0.75},\
	{x:0.50,z:-0.75},\
	{x:0.75,z:-0.75},\
	{x:-1.25,z:-0.50},\
	{x:-1.00,z:-0.50},\
	{x:-0.75,z:-0.50},\
	{x:-0.50,z:-0.50},\
	{x:-0.25,z:-0.50},\
	{x:0.00,z:-0.50},\
	{x:0.25,z:-0.50},\
	{x:0.50,z:-0.50},\
	{x:0.75,z:-0.50},\
	{x:-1.25,z:-0.25},\
	{x:-1.00,z:-0.25},\
	{x:-0.75,z:-0.25},\
	{x:-0.50,z:-0.25},\
	{x:-0.25,z:-0.25},\
	{x:0.00,z:-0.25},\
	{x:0.25,z:-0.25},\
	{x:0.50,z:-0.25},\
	{x:0.75,z:-0.25},\
	{x:-1.25,z:0.00},\
	{x:-1.00,z:0.00},\
	{x:-0.75,z:0.00},\
	{x:-0.50,z:0.00},\
	{x:-0.25,z:0.00},\
	{x:0.00,z:0.00},\
	{x:0.25,z:0.00},\
	{x:0.50,z:0.00},\
	{x:0.75,z:0.00},\
	{x:-1.25,z:0.25},\
	{x:-1.00,z:0.25},\
	{x:-0.75,z:0.25},\
	{x:-0.50,z:0.25},\
	{x:-0.25,z:0.25},\
	{x:0.00,z:0.25},\
	{x:0.25,z:0.25},\
	{x:0.50,z:0.25},\
	{x:0.75,z:0.25},\
	{x:-1.25,z:0.50},\
	{x:-1.00,z:0.50},\
	{x:-0.75,z:0.50},\
	{x:-0.50,z:0.50},\
	{x:-0.25,z:0.50},\
	{x:0.00,z:0.50},\
	{x:0.25,z:0.50},\
	{x:0.50,z:0.50},\
	{x:0.75,z:0.50},\
	{x:-1.25,z:0.75},\
	{x:-1.00,z:0.75},\
	{x:-0.75,z:0.75},\
	{x:-0.50,z:0.75},\
	{x:-0.25,z:0.75},\
	{x:0.00,z:0.75},\
	{x:0.25,z:0.75},\
	{x:0.50,z:0.75},\
	{x:0.75,z:0.75},\
	{x:0.9375,z:-0.0625},\
	{x:1.1875,z:-0.0625},\
	{x:0.9375,z:0.1875},\
	{x:1.1875,z:0.1875},\
	{x:0.9375,z:0.4375},\
	{x:1.1875,z:0.4375},\
]
data modify storage present_box_express: const.panels set value [\
	{index:0,type:"empty",rotation:0},\
	{index:1,type:"tree",rotation:0},\
	{index:2,type:"goal_1st",rotation:0},\
	{index:3,type:"goal_2nd",rotation:0},\
	{index:4,type:"allay_1st",rotation:0},\
	{index:5,type:"allay_1st",rotation:90},\
	{index:6,type:"allay_1st",rotation:180},\
	{index:7,type:"allay_1st",rotation:270},\
	{index:8,type:"allay_2nd",rotation:0},\
	{index:9,type:"allay_2nd",rotation:90},\
	{index:10,type:"allay_2nd",rotation:180},\
	{index:11,type:"allay_2nd",rotation:270},\
	{index:12,type:"arrow_1st",rotation:0},\
	{index:13,type:"arrow_1st",rotation:90},\
	{index:14,type:"arrow_1st",rotation:180},\
	{index:15,type:"arrow_1st",rotation:270},\
	{index:16,type:"arrow_2nd",rotation:0},\
	{index:17,type:"arrow_2nd",rotation:90},\
	{index:18,type:"arrow_2nd",rotation:180},\
	{index:19,type:"arrow_2nd",rotation:270},\
	{index:20,type:"arrow_both_0",rotation:0},\
	{index:21,type:"arrow_both_0",rotation:90},\
	{index:22,type:"arrow_both_0",rotation:180},\
	{index:23,type:"arrow_both_0",rotation:270},\
	{index:24,type:"arrow_both_90",rotation:0},\
	{index:25,type:"arrow_both_90",rotation:90},\
	{index:26,type:"arrow_both_90",rotation:180},\
	{index:27,type:"arrow_both_90",rotation:270},\
	{index:28,type:"arrow_both_180",rotation:0},\
	{index:29,type:"arrow_both_180",rotation:90},\
	{index:30,type:"arrow_both_180",rotation:180},\
	{index:31,type:"arrow_both_180",rotation:270},\
	{index:32,type:"arrow_both_270",rotation:0},\
	{index:33,type:"arrow_both_270",rotation:90},\
	{index:34,type:"arrow_both_270",rotation:180},\
	{index:35,type:"arrow_both_270",rotation:270},\
	{index:36,type:"active_arrow_1st",rotation:0},\
	{index:37,type:"active_arrow_1st",rotation:90},\
	{index:38,type:"active_arrow_1st",rotation:180},\
	{index:39,type:"active_arrow_1st",rotation:270},\
	{index:40,type:"active_arrow_2nd",rotation:0},\
	{index:41,type:"active_arrow_2nd",rotation:90},\
	{index:42,type:"active_arrow_2nd",rotation:180},\
	{index:43,type:"active_arrow_2nd",rotation:270},\
	{index:44,type:"active_arrow_both_0",rotation:0},\
	{index:45,type:"active_arrow_both_0",rotation:90},\
	{index:46,type:"active_arrow_both_0",rotation:180},\
	{index:47,type:"active_arrow_both_0",rotation:270},\
	{index:48,type:"active_arrow_both_90",rotation:0},\
	{index:49,type:"active_arrow_both_90",rotation:90},\
	{index:50,type:"active_arrow_both_90",rotation:180},\
	{index:51,type:"active_arrow_both_90",rotation:270},\
	{index:52,type:"active_arrow_both_180",rotation:0},\
	{index:53,type:"active_arrow_both_180",rotation:90},\
	{index:54,type:"active_arrow_both_180",rotation:180},\
	{index:55,type:"active_arrow_both_180",rotation:270},\
	{index:56,type:"active_arrow_both_270",rotation:0},\
	{index:57,type:"active_arrow_both_270",rotation:90},\
	{index:58,type:"active_arrow_both_270",rotation:180},\
	{index:59,type:"active_arrow_both_270",rotation:270},\
	{index:60,type:"side_empty",rotation:0},\
]
