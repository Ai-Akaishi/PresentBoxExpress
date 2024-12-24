### Copyright © 2024 赤石愛
### This software is released under the MIT License, see LICENSE.

# $tellraw @a[distance=..5] ["",{"text":"ステージの合言葉を生成しました: ","color":"green","bold":true},"\n",{"text": "$(passphrase)","color":"aqua"},"\n",\
# "  <<",{"text":"クリップボードにコピー","underlined":true,"clickEvent": {"action":"copy_to_clipboard","value": "$(passphrase)"}},">>  <<",{"text": "twitterでシェア","underlined":true,"clickEvent": {"action": "open_url","value": "https://twitter.com/share?text=ステージを作ったよ！%0a合言葉：%20$(passphrase)&hashtags=祝福のアレイ便"}},">>  "\
# ]

$tellraw @a[distance=..5] ["",{"text":"ステージの合言葉を生成しました: ","color":"green","bold":true},"\n",{"text": "$(passphrase)","color":"aqua"},"\n",\
"  <<",{"text":"クリップボードにコピー","underlined":true,"clickEvent": {"action":"copy_to_clipboard","value": "$(passphrase)"}},">>  <<",{"text": "twitterでシェア","underlined":true,"clickEvent": {"action": "open_url","value": "https://twitter.com/share?text=%23祝福のアレイ便%20でオリジナルステージを作ったよ！%0a合言葉：%0a$(passphrase)%0a%0aデータパック：%0ahttps://www.youtube.com/watch?v=bpDKBdHvmOU"}},">>  "\
]

# %23祝福のアレイ便%20でオリジナルステージを作ったよ！%0a合言葉：%0a$(passphrase)%0a%0aデータパック：%0ahttps://www.youtube.com/watch?v=bpDKBdHvmOU
