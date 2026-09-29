# 命名：skillscale/common
# 説明：200番未満（職業に紐付かない共通・基礎スキル）の「スキル強化」通知処理。
# 説明：スキルを既に習得している場合のみ、該当レベルに到達した瞬間だけ発火する。
# 説明：本文はアンダーライン付き。具体的な変化量はホバーテキスト（黄色太字）で表示する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillscale/common

# マナ・ハート（skill6）
# 説明：緩衝体力(absorption)はLv20刻みでamplifierが+1される。回復(regeneration)は「短時間×低Lv／長時間×同Lv」の
#   ペアで実装されており、実際にレベル（表示上のRegeneration Lv）が上がるのはLv20刻みのタイミングのみ
#   （Lv10/30/50/70/90は同じLvのまま持続時間だけ切り替わるため通知対象外）
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=20}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv2／回復Lv2","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=30}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv3","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=40}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv4／回復Lv3","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=50}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv5","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=60}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv6／回復Lv4","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=70}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv7","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=80}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv8／回復Lv5","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/6=true},scores={LVL=90}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"マナ・ハート","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"緩衝体力Lv9","color":"yellow","bold":true}]}}]
