# 命名：elemental
# 説明：元素の司教召喚
# 実行条件：adventureでない場合m=!2
# >/neofunction:tick/.neo
# =/function neofunction:system/adv/location/ceresta/ekiriburiamutick


# 内容：魔女保護の中身
#エキリブリアムが外に行かないように保護
execute as @s[type=minecraft:vindicator,nbt={DeathLootTable:"neofunction:asset/summon/752"}] unless entity @s[distance=..32] run tp @s 1029 8 1765
execute as @s[type=minecraft:vindicator,nbt={DeathLootTable:"neofunction:asset/summon/768"}] unless entity @s[distance=..32] run tp @s 1029 8 1765
#エキリブリアムから、浮遊効果を消す
effect clear @s levitation
#常にプレイヤー方向を見続ける（一番近いやつ）
#execute as @e[tag=ekiriburiamu] at @s run tp @s ~ ~ ~ facing entity @p eyes
#execute as @e[tag=ekirielite] at @s run tp @s ~ ~ ~ facing entity @p eyes
#エキリブリアムが埋まったら
#execute as @e[tag=ekiriburiamu] at @s unless block ~ ~ ~ #neofunction:air run tp @s 1029 8 1765
#execute as @e[tag=ekirielite] at @s unless block ~ ~ ~ #neofunction:air run tp @s 1029 8 1765

#プレイヤーが32mエリアに存在しない場合エキリブリアムの保護処理を停止する
execute if entity @a[distance=..32] run return 0

# ここから下は上の条件に合致した場合のみ
#保護処理を停止するラピス置き換え
setblock 1029 4 1764 minecraft:lapis_block
#40m以内の全てのエンティティにdel付与（削除）
#エキリが煽る

execute if entity @s[nbt={DeathLootTable:"neofunction:asset/summon/752"}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"退け。今の汝に、この試練を越える資格はない。","color":"gray","bold":true,"italic":false}]
execute if entity @s[nbt={DeathLootTable:"neofunction:asset/summon/768"}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"これが限界か。ならば、真なる均衡に触れることは許されぬ。","color":"gray","bold":true,"italic":false}]

tag @e[tag=enemy,distance=..40] add del
schedule function neofunction:asset/bossbar/hide 1s
#全員からエキリブリアムが出てくる進捗を剥奪
advancement revoke @a only neofunction:location/ceresta/elemental
#一定範囲の炎を削除
fill 1039 7 1775 1019 7 1755 minecraft:air replace fire