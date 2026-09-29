# 命名：tamer/rodsplashhit
# 説明：釣り竿の巻き込み範囲内にいた敵(@s)へ基礎ダメージ(sharpness込み)を与える。
# ノックバックも含め本体ヒットと同じ効果を巻き込み対象にも適用する
# ※knockback.mcfunctionはtag:kbAttackerを見て攻撃者→対象(@s)の方向へ吹き飛ばす仕組みなので、
#   本体ヒットと同じくfishingrod.mcfunctionが張ったkbAttackerタグが生きてる間に呼ぶ必要がある
# >/function neofunction:asset/skill/tamer/rodsplash 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) as @e[tag=hooked,limit=1,sort=nearest] as @e[tag=enemy,distance=..$(splashRadius),tag=!hooked] 実行位置@s(@e[tag=enemy,distance=..$(splashRadius),tag=!hooked]時点)
# =/function neofunction:asset/skill/tamer/rodsplashhit

$damage @s $(splashDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute if entity @s[type=#minecraft:undead] run damage @s $(splashSmiteDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute if entity @s[type=#minecraft:arthropod] run damage @s $(splashBaneDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute if entity @s[type=#minecraft:aquatic] run damage @s $(splashAquaDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute unless score #fireLvl temp matches 0 run data modify entity @s Fire set value $(fireTicks)
function neofunction:asset/skill/tamer/knockback