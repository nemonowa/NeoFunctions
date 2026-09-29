# 命名：.neo
# 説明：ワールドの正常性確認
# 説明：即読み込むと検知できないため分離(8s後)
# 説明：スケジュール受け渡しのため@a異常があるときだけ全体通知
# >/function neofunction:asset/event/log-in
# =/function neofunction:asset/event/log-in/.neo


# 正常性確認
#サーバープロパティでコマンドブロックが無効化されてる時の通知
execute in neodimension:nexus if loaded 1286 130 1294 if block 1286 130 1294 air run scoreboard players set #cmd_check temp 0
execute in neodimension:nexus run setblock 1286 131 1294 minecraft:command_block[conditional=false,facing=up]{Command:"scoreboard players set #cmd_check temp 1",CustomName:"@",SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}
execute in neodimension:nexus run setblock 1286 130 1294 redstone_block
execute in neodimension:nexus if loaded 1286 130 1294 run schedule function neofunction:asset/event/log-in/cmd_check 1s

# chunk
execute in neodimension:nexus unless loaded 1280 128 1280 run return run function neofunction:asset/event/log-in/0

# entity
execute unless entity 0-0-0-0-1 run return run function neofunction:asset/event/log-in/1

# block
execute in neodimension:nexus unless block 1288 128 1288 minecraft:redstone_block run return run function neofunction:asset/event/log-in/2

# storage & version
execute unless data storage neofunction:asset version run return run function neofunction:asset/event/log-in/3

# scoreboard
execute unless score upper world matches 1.. run return run function neofunction:asset/event/log-in/4

# version
execute unless score version world matches 3700 run return run function neofunction:asset/event/log-in/5


#通知。処理完了！システムオールグリーン！
tellraw @a[sort=arbitrary,gamemode=creative] [{"text":"<","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"log > neofunction:event/main/1"}]}},{"selector":"00000000-0000-0000-0000-000000000001"},{"text":">","bold":false,"italic":false},{"text":" 全システムの回復を確認。ステータス「"},{"text":"オール-グリーン","color":"green"},{"text":"」。"},{"text":"over.","color":"light_purple"}]
