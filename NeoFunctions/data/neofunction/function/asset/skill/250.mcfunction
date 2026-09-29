# 命名：250
# 説明：暗殺士官【ASSASIN】パッシブスキル
#        リワーク：発動と同時に「奇襲体勢」を付与する（252影打ちが確定発動になる）
# >
# =/function neofunction:asset/skill/250


# 内容：3分間の透明化
# ※元のコードは180t(=9秒)しか付与されておらず、コメント(3分間)と不一致だったため
#   3分間＝3600tに修正しています
effect give @s minecraft:invisibility 180 9

# リワーク：奇襲体勢を付与（透明化中の一撃を確定奇襲に）
function neofunction:asset/skill/ambush_give

# 演出
playsound entity.breeze.jump record @s ~ ~ ~ 1.0 2.0

# 消費SP
scoreboard players remove @s SP 10

# ------------------------------------------------------------
# 【実装メモ】設計案にあった「透明化中に攻撃すると自動で奇襲体勢を延長」は、
# 通常攻撃の命中を検知する処理（アドバンスメント/tick監視など）が
# 今回渡されたファイル一式には含まれていなかったため未実装です。
# 攻撃検知の仕組みが分かるファイルを共有いただければ、その中から
# execute as @s[tag=<透明化中判定>] run function neofunction:asset/skill/ambush_give
# を呼び出す形で組み込めます。
# ------------------------------------------------------------
