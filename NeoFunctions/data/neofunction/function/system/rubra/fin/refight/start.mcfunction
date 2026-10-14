# 命名：start
# 説明：【追加：2026-10-14 ルブラ編】クリア後の再戦を始める（セレンの選択 4491・4492）：近くの人を舞台へ、報酬ゾーンを消し、舞台を建て直して 2.5 秒後にヴォイド・ゼロ（start_2）
# 説明：前の再戦で負けていて、同じ挑み方（通常・エリート）なら、たどり着いた形態から。挑み方を変えたときは第 1 形態から
# 実行条件：実行者 プレイヤー。引数 e＝0b（通常）・1b（エリート）
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/rubra/fin/refight/start

# 内容
execute unless score #temp main_story matches 449.. run return 0
execute unless data storage neofunction:rubra fin{state:"done"} unless data storage neofunction:rubra fin{state:"gone"} unless data storage neofunction:rubra fin{state:"none"} run return 0
$execute unless data storage neofunction:rubra fin{refight:1b,elite:$(e)} run data modify storage neofunction:rubra fin.ckpt set value 1
$data modify storage neofunction:rubra fin merge value {refight:1b,elite:$(e),es:0}
tag @a[distance=..48] add rubra_tosky
function neofunction:system/rubra/fin/reward/clear
data modify storage neofunction:rubra fin.state set value "build"
function neofunction:system/rubra/fin/arena/build_go
schedule function neofunction:entity/skill/boss/rubra_void/start_2 50t replace
tellraw @a[tag=rubra_tosky] [{"text":"<"},{"text":"セレン","color":"#C8D0FF","bold":true},{"text":"> 「……来るわ」"}]
execute if data storage neofunction:rubra fin{elite:1b} run tellraw @a[tag=rubra_tosky] {"text":"黒い水が、前よりも濃く、重く、渦を巻きはじめた。","color":"#FF5555","italic":true}
