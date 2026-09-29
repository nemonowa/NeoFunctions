# 命名：212/chain_run
# 説明：レゾナンス・チェイン 連鎖ループ本体（マクロ関数／$(id) = このキャスターの連鎖ID）
# 説明：　　　（@sが発動者に再固定された状態でchain_dispatch経由で呼び出される）
# 説明：※マルチ対応：マーカー・被弾済みタグ・現在対象タグをすべて$(id)で区別し、
# 説明：　　他プレイヤーの連鎖と混線しないようにしている
# 説明：※対象はシギル(刻印)の有無に関わらず選ばれる（ダメージも入る）が、シギル無しの対象に
# 説明：　　当たった場合はChainSigilOK212=0にして、この一撃を最後に連鎖を打ち切る
# >
# =/function neofunction:asset/skill/212/chain_run

# マーカーが消えていたら中断（安全策）
$execute unless entity @e[tag=chain212_marker_$(id)] run return run function neofunction:asset/skill/212/chain_end {id:$(id)}

# 連鎖上限なし：無制限に連鎖する（ChainMax212による打ち切りは撤廃）

# マーカーの位置から4m以内に「まだ当てていない敵」がいなければ終了
$execute at @e[tag=chain212_marker_$(id)] unless entity @e[tag=enemy,tag=!chain212_hit_$(id),distance=..4,limit=1] run return run function neofunction:asset/skill/212/chain_end {id:$(id)}

# 次の対象を確定（連鎖できる距離：4m）
$execute at @e[tag=chain212_marker_$(id)] as @e[tag=enemy,tag=!chain212_hit_$(id),distance=..4,limit=1,sort=nearest] run tag @s add chain212_current_$(id)

# マーカーを次の対象の位置へ飛ばす
$execute as @e[tag=chain212_current_$(id)] at @s run tp @e[tag=chain212_marker_$(id)] ~ ~ ~

# 次の対象へ刻印+ダメージ
$execute as @e[tag=chain212_current_$(id)] run tag @s add chain212_hit_$(id)

# この対象がシギル無しだった場合、この一撃で連鎖を打ち切るためのフラグを立てる
$execute if entity @e[tag=chain212_current_$(id),nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run scoreboard players set @s ChainSigilOK212 1
$execute unless entity @e[tag=chain212_current_$(id),nbt={active_effects:[{id:"minecraft:glowing",amplifier:118b}]}] run scoreboard players set @s ChainSigilOK212 0

$execute as @e[tag=chain212_current_$(id)] run effect give @s minecraft:glowing 30 118 true
$execute as @e[tag=chain212_current_$(id)] run effect give @s minecraft:wither 30 0 true

$execute as @s[scores={LVL=10..}] as @e[tag=chain212_current_$(id)] run damage @s 10 minecraft:generic by @p
$execute as @s[scores={LVL=30..}] as @e[tag=chain212_current_$(id)] run damage @s 20 minecraft:generic by @p
$execute as @s[scores={LVL=50..}] as @e[tag=chain212_current_$(id)] run damage @s 40 minecraft:generic by @p
$execute as @s[scores={LVL=70..}] as @e[tag=chain212_current_$(id)] run damage @s 80 minecraft:generic by @p
$execute as @s[scores={LVL=90..}] as @e[tag=chain212_current_$(id)] run damage @s 160 minecraft:generic by @p

$tag @e[tag=chain212_current_$(id)] remove chain212_current_$(id)
scoreboard players add @s ChainCount212 1

# 「カンッ！」演出（連鎖するほどピッチが上がっていく）
# ★修正：元は「as @a[tag=chain212_caster]」で全キャスターに毎回誤発火していた。
# 　既にこのキャスター視点(@s)で実行しているので、そのまま条件分岐するだけでよい。
execute if score @s ChainCount212 matches 1 run say a
execute if score @s ChainCount212 matches 1 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.5
execute if score @s ChainCount212 matches 2 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.6
execute if score @s ChainCount212 matches 3 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.7
execute if score @s ChainCount212 matches 4 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.8
execute if score @s ChainCount212 matches 5 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.9
execute if score @s ChainCount212 matches 6 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.0
execute if score @s ChainCount212 matches 7 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.1
execute if score @s ChainCount212 matches 8 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.2
execute if score @s ChainCount212 matches 9 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.3
execute if score @s ChainCount212 matches 10 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.4
execute if score @s ChainCount212 matches 11 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.5
execute if score @s ChainCount212 matches 12 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.6
execute if score @s ChainCount212 matches 13 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.7
execute if score @s ChainCount212 matches 14 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.8
execute if score @s ChainCount212 matches 15 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.9
execute if score @s ChainCount212 matches 16.. run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 2.0

$execute at @e[tag=chain212_marker_$(id)] run particle minecraft:electric_spark ~ ~ ~ 0.3 4 0.3 0.01 100 force

# シギル無しの対象に当たった場合はここで打ち切り（最大チェーン数が2以上にはならない）
$execute if score @s ChainSigilOK212 matches 0 run function neofunction:asset/skill/212/chain_end {id:$(id)}

# 次tickの継続はchain.mcfunction側がまとめて行う（このキャスターのchain212_casterタグが
# 残っている限り、chain.mcfunctionが自動的に毎tick呼び出し続ける）
