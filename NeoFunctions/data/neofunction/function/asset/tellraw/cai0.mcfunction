# 命名：cai0
# 説明：初めに表示されるCAI君のメニュー
# 説明：execute as @s[scores={code=209}]
# >/function neofunction:system/trigger/code
# =/function neofunction:asset/tellraw/cai0


# 内容
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> 疑問点をどうぞ。"}]

tellraw @s [{"text":"+++-———————————————————————"}]

tellraw @s {"text":"Q1.「ここはどこ？」","color":"gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"クリックで質問する","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 212"}}

tellraw @s {"text":"Q2.「あなたはなに？」","color":"gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"クリックで質問する","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 213"}}

tellraw @s {"text":"Q3.「なにをするの？」","color":"gray","bold":true,hover_event:{"action":"show_text","value":[{"text":"クリックで質問する","color":"aqua","bold":true}]},click_event:{"action":"run_command",command:"/trigger code set 214"}}

tellraw @s [{"text":"———————————————————————-+++"}]

