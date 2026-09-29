# 命名：255
# 説明：虚影潜伏【ヴォイド・ハイド】
#        リワーク：発動時に奇襲体勢も付与する（潜伏からの一撃が確定奇襲になる）
# >スキル発動時
# =/function neofunction:asset/skill/255


# 内容：ターゲットを解除したりできたらなお良き？
effect give @s minecraft:invisibility 10 9

# リワーク：発動時に奇襲体勢を付与
function neofunction:asset/skill/ambush_give

# レベルに応じて効果時間調整
execute as @s[scores={LVL=10..}] run effect give @s minecraft:regeneration 10 0
execute as @s[scores={LVL=20..}] run effect give @s minecraft:regeneration 10 1
execute as @s[scores={LVL=30..}] run effect give @s minecraft:regeneration 10 2
execute as @s[scores={LVL=40..}] run effect give @s minecraft:regeneration 10 3
execute as @s[scores={LVL=50..}] run effect give @s minecraft:regeneration 10 4
execute as @s[scores={LVL=60..}] run effect give @s minecraft:regeneration 10 5
execute as @s[scores={LVL=70..}] run effect give @s minecraft:regeneration 10 6
execute as @s[scores={LVL=80..}] run effect give @s minecraft:regeneration 10 7
execute as @s[scores={LVL=90..}] run effect give @s minecraft:regeneration 10 8

scoreboard players remove @s SP 20

# クールタイム
# scoreboard players add @s CT 15

# ------------------------------------------------------------
# 【実装メモ】設計案にあった「発動中に攻撃した敵へ自動で呪印付与」は、
# 250と同様に攻撃命中を検知する仕組みが渡されたファイルに含まれていなかったため
# 未実装です。攻撃検知処理が分かれば
# execute as @e[tag=enemy,distance=..X] run function neofunction:asset/skill/mark_apply
# を組み込めます。
# ------------------------------------------------------------
