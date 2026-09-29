# 命名：skillscale/aria
# 説明：共鳴騎士【ARIA】の、レベルで効果量が変わるスキルの「スキル強化」通知処理。
# 説明：スキルを既に習得している場合のみ、該当レベルに到達した瞬間だけ発火する。
# 説明：本文はアンダーライン付き。具体的な変化量はホバーテキスト（黄色太字）で表示する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillscale/aria

# 運命連鎖【レゾナンス・チェイン】（skill212）
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/212=true},scores={LVL=30}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命連鎖【レゾナンス・チェイン】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"基本ダメージ10","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/212=true},scores={LVL=50}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命連鎖【レゾナンス・チェイン】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"基本ダメージ20","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/212=true},scores={LVL=70}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命連鎖【レゾナンス・チェイン】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"基本ダメージ40","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/212=true},scores={LVL=90}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命連鎖【レゾナンス・チェイン】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"基本ダメージ80","color":"yellow","bold":true}]}}]

# 運命跳躍【レゾナンス・リープ】（skill213）
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/213=true},scores={LVL=30}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命跳躍【レゾナンス・リープ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"範囲ダメージ20／単体ダメージ60","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/213=true},scores={LVL=50}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命跳躍【レゾナンス・リープ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"範囲ダメージ40／単体ダメージ120","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/213=true},scores={LVL=70}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命跳躍【レゾナンス・リープ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"範囲ダメージ80／単体ダメージ240","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/213=true},scores={LVL=90}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命跳躍【レゾナンス・リープ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"範囲ダメージ160／単体ダメージ480","color":"yellow","bold":true}]}}]

# 運命刻印【レゾナンス・シギル】（skill214）
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/214=true},scores={LVL=30}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命刻印【レゾナンス・シギル】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ウィザーLv2","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/214=true},scores={LVL=50}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命刻印【レゾナンス・シギル】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ウィザーLv3","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/214=true},scores={LVL=70}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命刻印【レゾナンス・シギル】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ウィザーLv4","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/210=true,neoadvancement:neoskill/214=true},scores={LVL=90}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"運命刻印【レゾナンス・シギル】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ウィザーLv5","color":"yellow","bold":true}]}}]
