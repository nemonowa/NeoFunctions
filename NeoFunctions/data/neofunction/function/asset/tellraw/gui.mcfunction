# 命名：gui
# 説明：ファストトラベル更新用
# >/function neofunction:system/adv/tick/looking_at/cai
# >/function neofunction:system/adv/inventory_changed/structure_block/4
# =/function neofunction:asset/tellraw/gui


# 内容
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> こちらカイ、ようこそネクサスへ！"}]

tellraw @s [{"text":"At."},{"selector":"@p"},{"text":". At."},{"selector":"@p"},{"text":". This is χ. Welcome to NEXUS. "},{"text":"over.","color":"light_purple"}]

tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s [{"text":">> 転相座標選択 <<","bold":true}]

tellraw @s [{"text":"⌖ "},{"nbt":"name","storage":"pos:4","interpret":true,click_event:{"action":"run_command",command:"/trigger code set 10"}}]

tellraw @s [{"text":"⌖ スポーンポイント",hover_event:{"action":"show_text","value":[{"text":"【復帰地点】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 97"}}]

tellraw @s [{"text":"⌖ チュートリアルルーム",hover_event:{"action":"show_text","value":[{"text":"【訓練区画】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 200"}}]

tellraw @s[gamemode=creative] [{"text":"⌖ ロストポイント",hover_event:{"action":"show_text","value":[{"text":"【消失地点】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 96"}}]

tellraw @s[gamemode=creative] [{"text":"⌖ "},{"nbt":"name","storage":"pos:prev","interpret":true,click_event:{"action":"run_command",command:"/trigger code set 404"}}]

tellraw @s[gamemode=creative] [{"text":"⌖ "},{"selector":"@s","color":"dark_aqua",click_event:{"action":"run_command",command:"/trigger code set 404"}},{"text":"の執務室","color":"dark_aqua",click_event:{"action":"run_command",command:"/trigger code set 404"}}]

tellraw @s [{"text":"———————————————————————-+++"}]


# tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> こちらカイ、ようこそネクサスへ！\nAt."},{"selector":"@p"},{"text":". At."},{"selector":"@p"},{"text":". This is χ. Welcome to NEXUS. "},{"text":"over.","color":"light_purple"},{"text":"\n+++-———————————————————————\n"},{"text":">> 転相座標選択 <<\n","bold":true},{"text":"⌖ "},{"nbt":"name","storage":"pos:4","interpret":true,click_event:{"action":"run_command",command:"/trigger code set 10"}},{"text":"\n⌖ スポーンポイント",hover_event:{"action":"show_text","value":[{"text":"【復帰地点】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 97"}},{"text":"\n⌖ ロストポイント",hover_event:{"action":"show_text","value":[{"text":"【消失地点】へ転相"}]},click_event:{"action":"run_command",command:"/trigger code set 96"}},{"text":"\n⌖ "},{"nbt":"name","storage":"pos:prev","interpret":true,click_event:{"action":"run_command",command:"/trigger code set 404"}},{"text":"\n⌖ "},{"selector":"@s","color":"dark_aqua",click_event:{"action":"run_command",command:"/trigger code set 404"}},{"text":"の執務室","color":"dark_aqua",click_event:{"action":"run_command",command:"/trigger code set 404"}},{"text":"\n———————————————————————-+++"}]