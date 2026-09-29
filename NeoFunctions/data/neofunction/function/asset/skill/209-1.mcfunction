# 命名：209-1
# 説明：天地断裂の着弾処理。0.5秒のタメの後にここで大ダメージ・専用大演出・連携ボーナス処理を行う。
# 説明：プレイヤー自身は209で軽く浮き上がり、着地と同時に足元へ十字の大斬撃演出が入る（skillcrosscasterタグで自分を再取得）。
# >
# =/function neofunction:asset/skill/209-1


# 着弾演出（専用の大技エフェクト。202/204と被らないビーム状の演出）
execute as @e[tag=skillcross] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 2 0.1 0.05 60 force
#execute as @e[tag=skillcross] at @s run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=skillcross] at @s run playsound minecraft:entity.zombie.attack_iron_door record @a[distance=..16] ~ ~ ~ 1 2
execute as @e[tag=skillcross] at @s run playsound minecraft:entity.generic.explode record @a[distance=..16] ~ ~ ~ 1 0.6


# プレイヤー本体の演出：浮いた状態から着地と同時に地面へ十字の大斬撃を叩き込む
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:crit ~ ~-1 ~ 0.1 0.1 0.1 0.3 10 force
execute as @a[tag=skillcrosscaster] at @s run playsound minecraft:entity.generic.explode master @a[distance=..24] ~ ~ ~ 1 0.5
execute as @a[tag=skillcrosscaster] at @s run playsound minecraft:item.trident.hit_ground master @a[distance=..24] ~ ~ ~ 1 0.6

execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^-4 ^-1 ^ 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^-2 ^-1 ^ 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^ ^-1 ^ 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^2 ^-1 ^ 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^4 ^-1 ^ 0 0 0 0 1 force

execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^ ^-1 ^-4 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^ ^-1 ^-2 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^ ^-1 ^2 0 0 0 0 1 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:sweep_attack ^ ^-1 ^4 0 0 0 0 1 force

execute as @a[tag=skillcrosscaster] at @s run particle minecraft:crit ^-4 ^-1 ^ 0.2 0.05 0.2 0.05 6 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:crit ^4 ^-1 ^ 0.2 0.05 0.2 0.05 6 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:crit ^ ^-1 ^-4 0.2 0.05 0.2 0.05 6 force
execute as @a[tag=skillcrosscaster] at @s run particle minecraft:crit ^ ^-1 ^4 0.2 0.05 0.2 0.05 6 force


# ダメージ：発動者本人のLVLをskillcrosscasterタグで正しく参照し、範囲内の敵全員に該当ティアのみを適用（旧コードはLVL条件を任意のエンティティで判定していた上、各行が独立判定だったため上位LVLほどティアが重複加算されるバグがあった）
execute as @a[tag=skillcrosscaster] if score @s LVL matches 40..59 run execute as @e[distance=..7,tag=skillcross] run damage @s 130 minecraft:generic by @p
execute as @a[tag=skillcrosscaster] if score @s LVL matches 60..79 run execute as @e[distance=..7,tag=skillcross] run damage @s 260 minecraft:generic by @p
execute as @a[tag=skillcrosscaster] if score @s LVL matches 80..99 run execute as @e[distance=..7,tag=skillcross] run damage @s 520 minecraft:generic by @p
execute as @a[tag=skillcrosscaster] if score @s LVL matches 100.. run execute as @e[distance=..7,tag=skillcross] run damage @s 1040 minecraft:generic by @p


# 連携ボーナス：剛刃草薙(204)で打ち上げ済み、またはデコイ(208)で晒された対象に追撃ダメージ
execute as @e[tag=skillcross,tag=airjuggled] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.3 0.3 0.1 20 force
execute as @e[tag=skillcross,tag=airjuggled] run damage @s 200 minecraft:generic by @p
execute as @e[tag=skillcross,tag=exposed] run damage @s 200 minecraft:generic by @p
tag @e[tag=skillcross] remove airjuggled
tag @e[tag=skillcross] remove exposed


# 跡を濁すな
tag @e remove skillcross
tag @e remove skillcrosscaster
