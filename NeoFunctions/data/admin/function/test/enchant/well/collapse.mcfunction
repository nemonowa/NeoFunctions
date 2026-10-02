# 命名：collapse
# 説明：重力井戸（試作）。崩壊して、3 ブロック以内の生き物に 6 ダメージ
# 実行条件：時間切れの井戸として、その位置で
# >/function admin:test/enchant/well/pull
# =/function admin:test/enchant/well/collapse


# 内容
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1.5 200
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 1.2
execute as @e[distance=..3,type=!player,type=!armor_stand,tag=!friendly] if data entity @s HurtTime run damage @s 6 minecraft:magic
kill @s
