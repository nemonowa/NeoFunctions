# 命名：villager
# 説明：（説明未記載）
# >/function admin:tellraw/.neo
# =/function admin:tellraw/villager

function admin:tellraw/top

tellraw @s {"text": "----§6Villager§f----"}

tellraw @s {"text": "Update","color": "green",hover_event: {"action": "show_text",value: {"text": "近くの村人を更新 admin:update/villager"}},click_event: {"action": "run_command",command: "/function admin:update/villager"}}

tellraw @s {"text": "Edit","color": "light_purple",hover_event: {"action": "show_text",value: {"text": "近くの村人を編集 admin:villager_edit"}},click_event: {"action": "run_command",command: "/function admin:villager_edit"}}

tellraw @s {"text": "ToBarrel","color": "dark_aqua",hover_event: {"action": "show_text",value: {"text": "近くの村人の交易内容を樽に admin:trade/to-barrel"}},click_event: {"action": "run_command",command: "/function admin:trade/to-barrel"}}

tellraw @s {"text": "----------------"}