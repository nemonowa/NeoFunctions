# 命名：259
# 説明：終影審判【エンド・オブ・シャドウ】
#        リワーク：本体の連撃(skill-special)に加えて、呪印を持つ敵に固定の追加ダメージが
#        乗る「呪印刈り取り」効果を追加。奥義発動と同時に呪印は消費される
# >スキル発動時
# =/function neofunction:asset/skill/259


# リワーク：呪印を持つ対象への追加ダメージ（16m以内、固定+75）と呪印の消費
execute as @e[tag=enemy,tag=marked,distance=..16] run damage @s 75 minecraft:generic by @p
execute as @e[tag=enemy,tag=marked,distance=..16] run tag @s remove marked

# 内容（本体の連続攻撃処理）
function neofunction:player/job/assasin/skill-special
