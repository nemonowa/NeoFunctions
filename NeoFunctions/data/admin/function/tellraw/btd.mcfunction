# 命名：btd
# 説明：（説明未記載）
# >/function admin:tellraw/.neo
# =/function admin:tellraw/btd

function admin:tellraw/top

tellraw @s {"text": "----§3BlockToDisplay§f----",hover_event: {"action": "show_text",value: {"text": "説明 Discordへ"}},click_event: {"action": "open_url",url: "https://discord.com/channels/1067520683715866634/1520273526634975313/1520280054637133964"}}

tellraw @s {"text": "Main","color": "light_purple",hover_event: {"action": "show_text",value: {"text": "ブロックをディスプレイに admin:block_to_display/.neo"}},click_event: {"action": "suggest_command",command: "/execute align xyz positioned ~0.5 ~ ~0.5 run function admin:block_to_display/.neo {X1:,Y1,Z1:,X2:,Y2:,Z2:}"}}

tellraw @s {"text": "GetData","color": "gold",hover_event: {"action": "show_text",value: {"text": "近くのディスプレイをコマンド化 admin:block_to_display/get_data"}},click_event: {"action": "run_command",command: "/execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..10] run function admin:block_to_display/get_data"}}

tellraw @s {"text": "GetModel","color": "blue",hover_event: {"action": "show_text",value: {"text": "近くのディスプレイをモデル化 admin:block_to_display/get_model"}},click_event: {"action": "run_command",command: "/execute as @e[type=armor_stand,limit=1,sort=nearest,distance=..10] run function admin:block_to_display/get_model"}}

tellraw @s {"text": "--------------"}