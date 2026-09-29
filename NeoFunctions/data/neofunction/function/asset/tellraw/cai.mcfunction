# 命名：cai
# 説明：
# >/function neofunction:system/adv/tick/looking_at/cai
# >/function neofunction:system/adv/inventory_changed/structure_block/4
# =/function neofunction:asset/tellraw/cai


# 内容
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> こちらカイ、ようこそネクサスへ！"}]

tellraw @s [{"text":"At."},{"selector":"@p"},{"text":". At."},{"selector":"@p"},{"text":". This is χ. Welcome to NEXUS. "},{"text":"over.","color":"light_purple"}]

tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s [{"text":">> 転相座標選択 <<","bold":true}]

tellraw @s {"text":"？ 会話：質問する。","color":"gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"クリックで質問する","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 209"}}

tellraw @s {"text":"⌖ 基礎：初回訓練OR-1","color":"dark_gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"再度チュートリアルを確認しに行く","color":"dark_gray","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 200"}}

tellraw @s {"text":"⌖ 次元：ネクサスの探索","color":"dark_aqua","bold":true,hover_event:{"action":"show_text","value":[{"text":"【NEXUS】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 211"}}

tellraw @s {"text":"⌖ 次元：オーバーワールドの探索","color":"dark_green","bold":true,hover_event:{"action":"show_text","value":[{"text":"【OverWorld】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 210"}}

tellraw @s {"text":"⌖ 次元：セレスタフェスタの探索","color":"#C3D825","bold":true,hover_event:{"action":"show_text","value":[{"text":"【CerestaFesta】へ転移"}]},click_event:{"action":"run_command",command:"/trigger code set 10"}}

tellraw @s {"text":"⌖ 再起：スポーンポイント","color":"dark_purple","bold":true,hover_event:{"action":"show_text","value":[{"text":"【復帰地点】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 97"}}

tellraw @s[gamemode=creative] [{"text":"⌖ ロストポイント",hover_event:{"action":"show_text","value":[{"text":"【消失地点】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 96"}}]

tellraw @s[gamemode=creative] [{"text":"⌖ "},{"nbt":"name","storage":"pos:prev","interpret":true,click_event:{"action":"run_command",command:"/trigger code set 404"}}]

tellraw @s[gamemode=creative] [{"text":"⌖ "},{"selector":"@s","color":"dark_aqua",click_event:{"action":"run_command",command:"/trigger code set 404"}},{"text":"の執務室","color":"dark_aqua",click_event:{"action":"run_command",command:"/trigger code set 404"}}]

tellraw @s [{"text":"———————————————————————-+++"}]

