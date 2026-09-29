# 命名：cai1
# 説明：初めに表示されるCAI君のメニュー
# >/function neofunction:system/adv/tick/looking_at/cai
# =/function neofunction:asset/tellraw/cai1


# 内容
tellraw @s [{"text":"At."},{"selector":"@p"},{"text":". At."},{"selector":"@p"},{"text":". This is χ. Welcome to NEXUS. "},{"text":"over.","color":"light_purple"}]
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> こちらχ、ようこそネクサスへ！"}]
playsound minecraft:neo/entity/cai/6 master @s[distance=..8] ~ ~ ~ 1 1 1

tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s {"text":"？ 会話：質問する。","color":"gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"クリックで質問する","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 209"}}

tellraw @s {"text":"⌖ 基礎：初回訓練OR-1（第1章へ）","color":"aqua","bold":true,hover_event:{"action":"show_text","value":[{"text":"序章「異空旅団のイニシエーション」を開始する！","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 200"}}

tellraw @s {"text":"⌖ 次元：ネクサスの探索","color":"dark_gray","bold":true,"strikethrough":true,hover_event:{"action":"show_text","value":[{"text":"チュートリアルが終わるまで転移不可！","color":"red","bold":true}]}}

tellraw @s {"text":"⌖ 次元：オーバーワールドの探索","color":"dark_gray","bold":true,"strikethrough":true,hover_event:{"action":"show_text","value":[{"text":"チュートリアルが終わるまで転移不可！","color":"red","bold":true}]}}

tellraw @s {"text":"⌖ 次元：セレスタフェスタの探索","color":"dark_gray","bold":true,"strikethrough":true,hover_event:{"action":"show_text","value":[{"text":"チュートリアルが終わるまで転移不可！","color":"red","bold":true}]}}

tellraw @s [{"text":"———————————————————————-+++"}]
