# 命名：212/init
# 説明：レゾナンス・チェイン 初回発動処理（マクロ関数／$(id) = このキャスターの連鎖ID）
# 説明：212.mcfunctionからストレージ経由の$(id)付きで呼び出される
# 説明：※起点はシギル(刻印)の有無に関わらず選ばれる（ダメージも入る）が、シギル無しだった場合は
# 説明：　　ChainSigilOK212=0にし、212.mcfunction側で連鎖ループの開始自体を止める
# >
# =/function neofunction:asset/skill/212/init

# 起点の敵がすでに刻印済みだったか判定（214からの繋ぎボーナス）
execute as @e[tag=enemy,distance=..16,nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run tag @s add chain212_primed

# 起点をタグ付け（以後はこのタグ＋自分のIDで追跡する）
$execute as @e[tag=enemy,distance=..8,limit=1,sort=nearest] run tag @s add chain212_hit_$(id)

# 追跡用マーカーを起点の位置に設置（自分のID付きタグで他プレイヤーのマーカーと区別する）
$execute at @e[tag=chain212_hit_$(id)] run summon minecraft:marker ~ ~ ~ {Tags:["chain212_marker_$(id)"]}

# 起点へ刻印付与
$execute as @e[tag=chain212_hit_$(id)] run effect give @s minecraft:glowing 30 118 true
$execute as @e[tag=chain212_hit_$(id)] run effect give @s minecraft:wither 30 0 true

# 起点への1発目ダメージ（既刻印からの起点なら1.5倍）
$execute as @s[scores={LVL=10..}] as @e[tag=chain212_hit_$(id),tag=!chain212_primed] run damage @s 5 minecraft:generic by @p
$execute as @s[scores={LVL=30..}] as @e[tag=chain212_hit_$(id),tag=!chain212_primed] run damage @s 10 minecraft:generic by @p
$execute as @s[scores={LVL=50..}] as @e[tag=chain212_hit_$(id),tag=!chain212_primed] run damage @s 20 minecraft:generic by @p
$execute as @s[scores={LVL=70..}] as @e[tag=chain212_hit_$(id),tag=!chain212_primed] run damage @s 40 minecraft:generic by @p
$execute as @s[scores={LVL=90..}] as @e[tag=chain212_hit_$(id),tag=!chain212_primed] run damage @s 80 minecraft:generic by @p

$execute as @s[scores={LVL=10..}] as @e[tag=chain212_hit_$(id),tag=chain212_primed] run damage @s 8 minecraft:generic by @p
$execute as @s[scores={LVL=30..}] as @e[tag=chain212_hit_$(id),tag=chain212_primed] run damage @s 15 minecraft:generic by @p
$execute as @s[scores={LVL=50..}] as @e[tag=chain212_hit_$(id),tag=chain212_primed] run damage @s 30 minecraft:generic by @p
$execute as @s[scores={LVL=70..}] as @e[tag=chain212_hit_$(id),tag=chain212_primed] run damage @s 60 minecraft:generic by @p
$execute as @s[scores={LVL=90..}] as @e[tag=chain212_hit_$(id),tag=chain212_primed] run damage @s 120 minecraft:generic by @p

# 起点にシギルが無かった場合、以降の連鎖を止めるためのフラグを立てる（212.mcfunction側で参照）
$execute if entity @e[tag=chain212_hit_$(id),tag=chain212_primed] run scoreboard players set @s ChainSigilOK212 1
$execute unless entity @e[tag=chain212_hit_$(id),tag=chain212_primed] run scoreboard players set @s ChainSigilOK212 0

$tag @e[tag=chain212_hit_$(id)] remove chain212_primed
scoreboard players set @s ChainCount212 1

# 1発目の「カンッ！」演出
#playsound minecraft:block.bell.use record @s ~ ~ ~ 1.0 1.1
$execute at @e[tag=chain212_marker_$(id)] run particle minecraft:electric_spark ~ ~0.6 ~ 0.15 0.15 0.15 0.01 12 force
