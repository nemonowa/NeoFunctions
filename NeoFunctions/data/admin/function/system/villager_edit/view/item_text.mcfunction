# 命名：item_text
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/view/item_text
# 【変更：2026-09-27 26.3対応】26.3 の show_item は id / count / components を直接指定する
$tellraw @s [{"text":""},{"text":"$(id)×$(count)",hover_event:{"action":"show_item",id:"$(id)",count:$(count),components:$(components)}},{"text":"  "},{"text":"↓",hover_event:{"action":"show_text","value":{"text":"メインハンドにプル"}},click_event:{"action":"run_command",command:"/function admin:system/villager_edit/pull {Slot:\"$(Slot)\",Id:$(Id)}"},"color":"green","bold":true},{"text":"  "},{"text":"↑",hover_event:{"action":"show_text","value":{"text":"メインハンドからプッシュ"}},click_event:{"action":"run_command",command:"/function admin:system/villager_edit/push {Slot:\"$(Slot)\",Id:$(Id)}"},"color":"red","bold":true}]
