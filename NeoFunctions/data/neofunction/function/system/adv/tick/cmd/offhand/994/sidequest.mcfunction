# 命名：sidequest
# 説明：
# >/function neofunction:system/adv/tick/cmd/offhand/994
# =/function neofunction:system/adv/tick/cmd/offhand/994/sidequest

#サブクエストの状況に応じて目標を表示する
execute if entity @s[tag=!quest] run return run tellraw @s {"text":"目標無し","color":"dark_gray","bold":true,"italic":false}

scoreboard players set @s temp 0

execute as @s[tag=quest1] run return run tellraw @s [{"text":"◦ 夜にうごめく影【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/10】"}]

execute as @s[tag=quest2] run return run tellraw @s [{"text":"◦ セレスタ・ブルーライム討伐隊！【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/10】"}]

execute as @s[tag=quest3] run return run tellraw @s {"text":"◦ まずは煮沸から始めたまえ【進行中:0/1】"}

execute as @s[tag=quest4] run return run tellraw @s [{"text":"◦ 深夜航路の亡霊【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/10】"}]

execute as @s[tag=quest5] run return run tellraw @s [{"text":"◦ 水お願い！！！【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/3】"}]

execute as @s[tag=quest6] run return run tellraw @s [{"text":"◦ 属性調査任務【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/4】"}]

execute as @s[tag=quest7] run return run tellraw @s {"text":"◦ 魔力核収集任務【進行中:0/1】"}

execute as @s[tag=quest8] run return run tellraw @s {"text":"◦ 魔力瓶充填&敵10体討伐【進行中:0/1】"}

execute as @s[tag=quest9] run return run tellraw @s {"text":"◦ クラウス落とし物【進行中:0/1】"}

execute as @s[tag=quest11] run return run tellraw @s [{"text":"◦ 精霊の試練【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/25】"}]

execute as @s[tag=quest12] run return run tellraw @s [{"text":"◦ 釣り日和【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/15】"}]

execute as @s[tag=quest13] run return run tellraw @s [{"text":"◦ 沈黙を刈る者【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/10】"}]

execute as @s[tag=quest14] run return run tellraw @s [{"text":"◦ 迷子の牛と羊【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/6】"}]

execute as @s[tag=quest21] run return run tellraw @s {"text":"◦ 魔力瓶充填&敵20体討伐【進行中:0/1】"}

execute as @s[tag=quest22] run return run tellraw @s {"text":"◦ お前はまだビールを知らない【進行中:0/1】"}

execute as @s[tag=quest23] run return run tellraw @s [{"text":"◦ 農業王の弟子？【進行中:"},{"score":{"name":"@s","objective":"break_wheat"}},{"text":"/100】"}]

execute as @s[tag=quest24] run return run tellraw @s [{"text":"◦ 悪いルクスリアン？【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/15】"}]

execute as @s[tag=quest25] run return run tellraw @s [{"text":"◦ やはりエジプトか...？【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/15】"}]

execute as @s[tag=quest26] run return run tellraw @s [{"text":"◦ What season do you like?【進行中:"},{"score":{"name":"@s","objective":"quest"}},{"text":"/25】"}]
