# 命名：skillscale/knight
# 説明：白刃騎士【KNIGHT】の、レベルで効果量が変わるスキルの「スキル強化」通知処理。
# 説明：スキルを既に習得している場合のみ、該当レベルに到達した瞬間だけ発火する。
# 説明：本文はアンダーライン付き。具体的な変化量はホバーテキスト（黄色太字）で表示する。
# >/function neofunction:system/scoreboard/lvl/N
# =/function neofunction:system/scoreboard/lvl/skillscale/knight

# 白刃一閃【スラッシュ】（skill202）
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/202=true},scores={LVL=30}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"白刃一閃【スラッシュ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ60","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/202=true},scores={LVL=50}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"白刃一閃【スラッシュ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ120","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/202=true},scores={LVL=70}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"白刃一閃【スラッシュ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ240","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/202=true},scores={LVL=90}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"白刃一閃【スラッシュ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ480","color":"yellow","bold":true}]}}]

# 剛刃草薙【スマッシャー】（skill204）
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/204=true},scores={LVL=30}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"剛刃草薙【スマッシャー】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ60","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/204=true},scores={LVL=50}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"剛刃草薙【スマッシャー】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ120","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/204=true},scores={LVL=70}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"剛刃草薙【スマッシャー】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ240","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/204=true},scores={LVL=90}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"剛刃草薙【スマッシャー】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ480","color":"yellow","bold":true}]}}]

# 天地断裂【グランドクロス】（skill209）
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/209=true},scores={LVL=60}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"天地断裂【グランドクロス】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ260","color":"yellow","bold":true}]}}]
tellraw @s[advancements={neoadvancement:neoskill/200=true,neoadvancement:neoskill/209=true},scores={LVL=80}] [{"text":"スキル強化:","color":"gold","bold":true,"underlined":true},{"text":"天地断裂【グランドクロス】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ダメージ520","color":"yellow","bold":true}]}}]
