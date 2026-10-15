# 命名：choice_show
# 説明：欠片の選択をチャットに出す。［埋め戻す］（/trigger code set 4161）か［持ち帰る］（4162）をクリックして選ぶ
# 説明：選択肢をチャットのクリックで出す
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d1/416（会話の Command）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/d1/choice_show

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 416 run return 0
tellraw @s ""
tellraw @s {"text":"――星の畑の欠片を、どうする？","color":"#FFD27A","bold":true}
tellraw @s [{"text":"　　"},{"text":"［埋め戻す］","color":"#FF8A7A","bold":true,"hover_event":{"action":"show_text","value":{"text":"星の畑に、欠片を還す","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4161"}},{"text":"　　"},{"text":"［持ち帰る］","color":"#FFD27A","bold":true,"hover_event":{"action":"show_text","value":{"text":"ミラの袋に入れて、鉱夫たちへ","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4162"}}]
tellraw @s ""
