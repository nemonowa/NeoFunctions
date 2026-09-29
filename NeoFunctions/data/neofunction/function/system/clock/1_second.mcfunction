# 命名：低周期クロック
# 説明：一秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/1_second


# 内容
advancement revoke @a from neofunction:.clock/1s
execute as @e[type=armor_stand,tag=1s] at @s run tp @s ~ ~1.0 ~

# クールタイムCT
execute as @a[scores={CT=1..}] run scoreboard players remove @s CT 1

# クールタイムCT（ARIAスキル）116の発光を所持時のみ倍のCT減少
execute as @a[scores={CT=1..},nbt={active_effects:[{id:"minecraft:glowing",amplifier:116b}]}] run scoreboard players remove @s CT 1

# 職業パッシブ
execute as @a[advancements={neoadvancement:neoskill/250=true}] run function neofunction:player/job/assasin/skill-passive

# SPが容量オーバー
execute as @a if score @s SP < $0 const run function neofunction:player/sp/luck
execute as @a if score @s SP > @s SPmax run function neofunction:player/sp/over

# 色彩神殿のエンパと跳躍対策、今後汎用処理に移動予定←すでに完了済だけど、プレイヤー体験の面から改善必須
execute as @a[tag=parkour] at @s run function neofunction:system/clock/1_second/1

# 加護タイマーが1200超えたら
execute as @a if score @s venedictiontimer matches 1200.. run function neofunction:asset/skill/venedictionremove

# ゾンビウイルス
# execute as @a[gamemode=!creative] at @s if entity @e[type=minecraft:zombie,distance=0.0..0.5] run function neofunction:system/scoreboard/infection

# skillclock
function neofunction:entity/skill/clock/1s

# ダメージタイマー
scoreboard players add @a no_dmg_timer 1
# 1s毎にダメージを受けたかどうかチェックする受けてない人は緩衝体力の回復を いったん重複でうるさいかもしれないから一度ヒールしたら敵から攻撃喰らうまでは、回復処理を行わないただこの検知は正確ではない（例えば他の要因でダメージ受けた時）等はこれに合致しないため良くないのでいつか修正希望
execute as @a[scores={no_dmg_timer=60..},tag=!absorphealed] at @s run function neofunction:player/absorption/heal_full

# 注意：dpsより前に
kill @e[tag=del1s]

# dps
execute as @e[tag=dps,limit=1] at @s run function neofunction:entity/skill/dps

#シュルカーのcanplaceに黒曜石を追加
execute as @a[nbt={Dimension:"neodimension:ceresta_festa"},predicate=neofunction:item/shulker_box] run item modify entity @s weapon.mainhand neofunction:shulker_box

# 古いモブの修正
execute if entity @e[tag=mob,tag=!UUIDchecked] as @e[tag=mob,tag=!UUIDchecked] run function neofunction:entity/.spawn/mob/uuidcheck

#　再装填
schedule clear neofunction:system/clock/1_second
schedule function neofunction:system/clock/1_second 1s
