# 命名：choice_c_show
# 説明：【追加：2026-10-09 ルブラ編】選択 C をチャットに出す：［広場で、みんなに明かす］4321 ／［今は伏せておく］4322
# 実行条件：実行者 プレイヤー（会話の最後の Command、またはオルドに話しかけたとき）
# >/function neofunction:system/adv/tick/quest/40/d3/431（会話の Command）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/904
# =/function neofunction:system/adv/tick/quest/40/d3/choice_c_show

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 431 run return 0
execute if data storage neofunction:rubra choice.reveal run return 0
tellraw @s ""
tellraw @s {"text":"――民に、話すべきか？","color":"#FFD27A","bold":true}
tellraw @s [{"text":"　"},{"text":"［広場で、みんなに明かす］","color":"#FFB070","bold":true,"hover_event":{"action":"show_text","value":{"text":"星のこと、約束のことを、街のみんなに話す","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4321"}},{"text":"　"},{"text":"［今は伏せておく］","color":"gray","bold":true,"hover_event":{"action":"show_text","value":{"text":"街が混乱しないよう、今は三人の胸にしまう","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4322"}}]
tellraw @s ""
