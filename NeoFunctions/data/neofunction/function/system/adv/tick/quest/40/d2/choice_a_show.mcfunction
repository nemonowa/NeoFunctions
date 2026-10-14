# 命名：choice_a_show
# 説明：【追加：2026-10-09 ルブラ編】選択 A をチャットに出す：［ミラの味方をする］4211 ／［オルドの言うことも分かる］4212 ／［黙っている］4213
# 実行条件：実行者 プレイヤー（会話の最後の Command、またはオルドに話しかけたとき）
# >/function neofunction:system/adv/tick/quest/40/d2/421（会話の Command）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/904
# =/function neofunction:system/adv/tick/quest/40/d2/choice_a_show

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 421 run return 0
execute if data storage neofunction:rubra choice.council run return 0
tellraw @s ""
tellraw @s {"text":"――旅人は、どうする？","color":"#FFD27A","bold":true}
tellraw @s [{"text":"　"},{"text":"［ミラの味方をする］","color":"#7FB3FF","bold":true,"hover_event":{"action":"show_text","value":{"text":"「蟲は、下から来た」と、ミラの側に立つ","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4211"}},{"text":"　"},{"text":"［オルドの言うことも分かる］","color":"#4A7BD0","bold":true,"hover_event":{"action":"show_text","value":{"text":"水守頭の言い分にも理がある、と言う","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4212"}},{"text":"　"},{"text":"［黙っている］","color":"gray","bold":true,"hover_event":{"action":"show_text","value":{"text":"何も言わない","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4213"}}]
tellraw @s ""
