# 命名：449
# 説明：【追加：2026-10-09 ルブラ編】ルブラ編の終わり：結末（A・B・C）を記録し、街を結末に合わせて変え（赤い星・泉）、メインクエストの達成を出す。C で手記 7 冊を集めた人には「手記 その八」
# 実行条件：実行者 プレイヤー（会話の最後の Command）。引数 e＝A・B・C
# >/function neofunction:system/adv/tick/quest/40/fin/end_a
# >/function neofunction:system/adv/tick/quest/40/fin/end_b
# >/function neofunction:system/adv/tick/quest/40/fin/end_c
# =/function neofunction:system/adv/tick/quest/40/fin/449

# 内容
data remove storage neofunction:rubra busy
execute unless score #temp main_story matches 448 run return 0
scoreboard players set #temp main_story 449
$data modify storage neofunction:rubra ending set value "$(e)"
execute as @e[type=marker,tag=rubra_mira_kan,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
tp @e[type=villager,tag=rubra_ordo] 959.5 44 3271.5 90 0
kill @e[type=mannequin,tag=rubra_fin_selenv]
# 【変更：2026-10-14】舞台は片付けず、場所として残す。真ん中に討伐の報酬（宝箱・アンカー 139・帰還ゲート）を出す
function neofunction:system/rubra/fin/reward/build
execute unless data storage neofunction:rubra {ending:"B"} run function neofunction:system/adv/tick/quest/40/fin/redstar
execute unless data storage neofunction:rubra {ending:"A"} run function neofunction:system/adv/tick/quest/40/fin/water
execute if data storage neofunction:rubra {ending:"C"} as @a[distance=..96,tag=rubra_j1,tag=rubra_j2,tag=rubra_j3,tag=rubra_j4,tag=rubra_j567,tag=!rubra_j8] run loot give @s loot neofunction:item/1919
execute if data storage neofunction:rubra {ending:"C"} as @a[distance=..96,tag=rubra_j1,tag=rubra_j2,tag=rubra_j3,tag=rubra_j4,tag=rubra_j567] run tag @s add rubra_j8
execute as @a[distance=..96] run tellraw @s [{"text":"＊","color":"#D8DE2A","italic":true},{"selector":"@s","color":"#1E90FF","bold":true,"italic":false},{"text":"がメインクエスト：","color":"#D8DE2A","italic":true},{"text":"紅鉢の街ルブラ","color":"#D7263D","bold":true,"italic":false},{"text":"を達成した！","color":"#D8DE2A","italic":true}]
execute if data storage neofunction:rubra {ending:"A"} as @a[distance=..96] at @s run title @s subtitle [{"text":"꧁","color":"dark_purple","bold":true},{"text":"結末 A　星還りの夜","color":"#FF7B7B","bold":true},{"text":"꧂","color":"dark_purple","bold":true}]
execute if data storage neofunction:rubra {ending:"B"} as @a[distance=..96] at @s run title @s subtitle [{"text":"꧁","color":"dark_purple","bold":true},{"text":"結末 B　鎖の守り人","color":"#8A7FD0","bold":true},{"text":"꧂","color":"dark_purple","bold":true}]
execute if data storage neofunction:rubra {ending:"C"} as @a[distance=..96] at @s run title @s subtitle [{"text":"꧁","color":"dark_purple","bold":true},{"text":"結末 C　星と街の約束","color":"#FFC23D","bold":true},{"text":"꧂","color":"dark_purple","bold":true}]
execute as @a[distance=..96] at @s run title @s title {"text":"メインクエストを達成した","color":"dark_green","bold":true}
execute as @a[distance=..96] at @s run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1.0 1.0
# 【追加：2026-10-09】終章の目印・残骸を片付ける（舞台の片付けが終わったあとに）
schedule function neofunction:system/rubra/tidy_fin 80t replace
