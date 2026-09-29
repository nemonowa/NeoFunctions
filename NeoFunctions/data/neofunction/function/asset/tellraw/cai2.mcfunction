# 命名：cai2
# 説明：初めに表示されるCAI君のメニュー
# >/function neofunction:system/adv/tick/looking_at/cai
# =/function neofunction:asset/tellraw/cai2


# 内容
tellraw @s [{"text":"At."},{"selector":"@p"},{"text":". At."},{"selector":"@p"},{"text":". This is χ."},{"text":"over.","color":"light_purple"}]
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> 戦闘クラスの申請を推奨します。"}]
playsound minecraft:neo/entity/cai/1 master @s[distance=..8] ~ ~ ~ 1 1 1

tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s {"text":"？ 会話：質問する。","color":"gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"クリックで質問する","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 209"}}

tellraw @s {"text":"⌖ 任務：ブリーフィング（第2章へ）","color":"aqua","bold":true,hover_event:{"action":"show_text","value":[{"text":"序章「異空旅団のイニシエーション」を開始する！","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 215"}}

tellraw @s {"text":"⌖ 次元：ネクサスの探索","color":"dark_gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"先に兵科の申請を済ませることをお勧めします。","color":"red","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 211"}}

tellraw @s {"text":"⌖ 次元：オーバーワールドの探索","color":"dark_gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"先に兵科の申請を済ませることをお勧めします。","color":"red","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 210"}}

tellraw @s {"text":"⌖ 次元：セレスタフェスタの探索","color":"dark_gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"先に兵科の申請を済ませることをお勧めします。","color":"red","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 10"}}

tellraw @s [{"text":"———————————————————————-+++"}]

