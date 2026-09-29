# 命名：harvestinfo
# 説明：収穫印判初回起動時
# >
# =/function neofunction:asset/sign/spellsign/base/harvestinfo


# 内容
tag @s add spellharvestinfo
tellraw @s [{"text":"\n━━━ ","color":"dark_green","bold":true},{"text":"操作ガイド【カーソルをホバーして詳細表示】","color":"green","bold":true},{"text":" ━━━\n","color":"dark_green","bold":true},{"text":"▸ 右クリック","color":"yellow","bold":true,hover_event:{"action":"show_text","value":[{"text":"右クリックすると収穫します。\n幸運を付けて収穫すると幸運の効果が発生します。","color":"white"}]}},{"text":"　→　","color":"gray"},{"text":"収穫する","color":"white","bold":true},{"text":"\n\n"},{"text":"▸ 骨粉を持って右クリック","color":"green","bold":true,hover_event:{"action":"show_text","value":[{"text":"骨粉を手に持って右クリックすると、\n周囲の作物に骨粉の効果を与えます。","color":"white"}]}},{"text":"　→　","color":"gray"},{"text":"周囲の作物を成長させる","color":"white","bold":true},{"text":"\n\n"},{"text":"▸ スニーク＋右クリック","color":"aqua","bold":true,hover_event:{"action":"show_text","value":[{"text":"スニークしながら右クリックすると、\nこの操作ガイドを再表示します。","color":"white"}]}},{"text":"　→　","color":"gray"},{"text":"操作ガイドを再表示","color":"white","bold":true},{"text":"\n"}]