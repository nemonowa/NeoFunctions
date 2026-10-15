# 命名：choice_b_show
# 説明：選択 B をチャットに出す：［セレンを止める］4281 ／［話を聞く］4282 ／［一緒に行くと言う］4283
# 実行条件：実行者 プレイヤー（会話の最後の Command、またはミラに話しかけたとき）
# >/function neofunction:system/adv/tick/quest/40/d2/428（会話の Command）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/d2/choice_b_show

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 428 run return 0
execute if data storage neofunction:rubra choice.selen run return 0
tellraw @s ""
tellraw @s {"text":"――セレンに、どうする？","color":"#FFD27A","bold":true}
tellraw @s [{"text":"　"},{"text":"［止める］","color":"#FF7A6A","bold":true,"hover_event":{"action":"show_text","value":{"text":"ここで、止めると伝える","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4281"}},{"text":"　"},{"text":"［話を聞く］","color":"#C8D0FF","bold":true,"hover_event":{"action":"show_text","value":{"text":"セレンの話を、最後まで聞く","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4282"}},{"text":"　"},{"text":"［一緒に行くと言う］","color":"#7FB3FF","bold":true,"hover_event":{"action":"show_text","value":{"text":"星を還すなら、手伝うと言う","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger code set 4283"}}]
tellraw @s ""
