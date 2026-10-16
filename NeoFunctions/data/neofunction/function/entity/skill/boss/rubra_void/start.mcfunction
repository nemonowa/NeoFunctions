# 命名：start
# 説明：星還りの空での戦いを始める：近くの人に印（rubra_tosky）を付け、舞台を建て、2.5 秒後に人を舞台へ移してヴォイド・ゼロを出す（start_2）。すでに始まっていれば、すぐ舞台へ。進み具合 444
# 実行条件：実行者 プレイヤー（会話の最後の Command）か、ミラ（やり直し）。#temp main_story 443〜444
# >/function neofunction:system/adv/tick/quest/40/fin/443
# >/function neofunction:system/adv/tick/quest/40/fin/443_retry
# =/function neofunction:entity/skill/boss/rubra_void/start

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 443..444 run return 0
execute if entity @s[type=player] run tag @s add rubra_tosky
execute unless entity @s[type=player] run tag @a[distance=..24] add rubra_tosky
execute if score #temp main_story matches 444 if data storage neofunction:rubra fin{state:"fight"} run return run function neofunction:entity/skill/boss/rubra_void/tosky
execute if score #temp main_story matches 444 run return 0
scoreboard players set #temp main_story 444
data modify storage neofunction:rubra fin merge value {elite:0b,refight:0b}
data modify storage neofunction:rubra fin.state set value "build"
# 再戦のときは討伐の報酬（宝箱・アンカー 139・帰還ゲート）を消してから舞台を建てる
function neofunction:system/world/ceresta/rubra/fin/reward/clear
function neofunction:system/world/ceresta/rubra/fin/arena/build_go
schedule function neofunction:entity/skill/boss/rubra_void/start_2 50t replace
tellraw @a[tag=rubra_tosky] {"text":"星の光の階段が、夜空へのびていく……","color":"#B8D8FF","italic":true}
