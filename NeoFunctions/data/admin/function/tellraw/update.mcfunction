# 命名：update
# 説明：（説明未記載）
# >/function admin:tellraw/.neo
# =/function admin:tellraw/update

function admin:tellraw/top

tellraw @s {"text": "----§aUpdate§f----"}

tellraw @s {"text": "Villager","color": "gold",hover_event: {"action": "show_text",value: {"text": "近くの村人を更新 admin:update/villager"}},click_event: {"action": "run_command",command: "/function admin:update/villager"}}

tellraw @s {"text": "Container","color": "dark_aqua",hover_event: {"action": "show_text",value: {"text": "目線先のコンテナブロックを更新 admin:update/container"}},click_event: {"action": "run_command",command: "/function admin:update/container"}}

tellraw @s {"text": "--------------"}