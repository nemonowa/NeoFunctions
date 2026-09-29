# 命名：asset/skill/tamer/fishing_rod_hooked
# 説明：釣り竿でダメージ与えるマクロ
# >/function neofunction:asset/skill/tamer/fishingrod 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) as @e[tag=hooked,limit=1,sort=nearest] 実行位置@s(@e[tag=hooked,limit=1,sort=nearest]時点)
# =/function neofunction:asset/skill/tamer/fishingrodmacro

#内容

$damage @s $(dmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute if entity @s[type=#minecraft:undead] run damage @s $(smiteDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute if entity @s[type=#minecraft:arthropod] run damage @s $(baneDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute if entity @s[type=#minecraft:aquatic] run damage @s $(aquaDmg) minecraft:mob_attack by @a[tag=kbAttacker,limit=1]
$execute unless score #fireLvl temp matches 0 run data modify entity @s Fire set value $(fireTicks)
function neofunction:asset/skill/tamer/knockback

# 巻き込み半径は最低1(Sweeping Edge未所持でも単体扱いにしない)なので、rodsplashは常に呼ぶ
function neofunction:asset/skill/tamer/rodsplash with storage neofunction:tamer temp