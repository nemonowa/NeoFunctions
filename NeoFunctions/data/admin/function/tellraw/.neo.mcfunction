# 命名：.neo
# 説明：創造の書メニュー
# 説明：創造の書から呼び出される。クリエイティブ便利なコマンド一覧メニュー
# >/function admin:give/shortcut/shortcut29
# =/function admin:tellraw/.neo




function admin:tellraw/top

tellraw @s {"text": "Update","color": "green",hover_event: {"action": "show_text",value: {"text": "更新の関数 admin:tellraw/update"}},click_event: {"action": "run_command",command: "/function admin:tellraw/update"}}

tellraw @s {"text": "Villager","color": "gold",hover_event: {"action": "show_text",value: {"text": "村人の関数 admin:tellraw/villager"}},click_event: {"action": "run_command",command: "/function admin:tellraw/villager"}}

tellraw @s {"text": "BlockToDisplay","color": "dark_green",hover_event: {"action": "show_text",value: {"text": "ブロックの関数 admin:tellraw/btd"}},click_event: {"action": "run_command",command: "/function admin:tellraw/btd"}}

tellraw @s {"text": "SpawnerEdit","color": "dark_blue",hover_event: {"action": "show_text",value: {"text": "スポナーの関数 admin:tellraw/spawner"}},click_event: {"action": "run_command",command: "/function admin:tellraw/spawner"}}

