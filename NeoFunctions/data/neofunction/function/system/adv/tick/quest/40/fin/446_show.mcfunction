# 命名：446_show
# 説明：終わりの選択（チャット）：星を射る（4461、結末 A か C）／ヴォイド・ゼロを射る（4462、結末 B）
# 実行条件：実行者 プレイヤー
# >/function neofunction:entity/skill/boss/rubra_void/rise
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/fin/446_show

# 内容
execute unless score #temp main_story matches 446 run return 0
execute if data storage neofunction:rubra choice.final run return 0
tellraw @s ""
tellraw @s {"text":"――弦を引く。手のあいだに、赤と青と金の、一本の光の矢が生まれた。どこを射る？","color":"#FFD27A","bold":true}
tellraw @s [{"text":"　"},{"text":"［星を射る］","color":"#FF7B7B","bold":true,"hover_event":{"action":"show_text","value":{"text":"星を傷つけずに包んで、空へ還す","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4461"}},{"text":"　"},{"text":"［ヴォイド・ゼロを射る］","color":"#8A7FD0","bold":true,"hover_event":{"action":"show_text","value":{"text":"黒い渦を射抜き、星をもう一度この地に縛る","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4462"}}]
tellraw @s ""
