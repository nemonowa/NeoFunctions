# 命名：60s
# 説明：指定tagを持つエンティティを1秒毎に対象
# 説明：条件: 60s
# >/function neofunction:system/clock/60_second.mcfunction
# =/function neofunction:entity/skill/clock/60s

##内容

#一分ごとに周囲64mにプレイヤーがいないenemy持ちをキル
#execute as @e[tag=enemy,tag=!boss,tag=!elite,tag=!god,tag=!king] at @s unless entity @a[distance=..64,limit=1,gamemode=!spectator] run tag @s[nbt={PersistenceRequired:0b}] add del