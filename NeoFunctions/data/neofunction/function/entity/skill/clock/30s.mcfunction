# 命名：30s
# 説明：指定tagを持つエンティティを1秒毎に対象
# 説明：条件: 30s
# >/function neofunction:system/clock/30_second.mcfunction
# =/function neofunction:entity/skill/clock/30s

# 全体

#tridentスキル 30秒毎に対象トライデントを自機狙い（近いやつ）狙いで投げる。
execute as @e[tag=tridentforcus4] as @s run function neofunction:entity/skill/trident4forcus
execute as @e[tag=tridentforcus8] as @s run function neofunction:entity/skill/trident8forcus
#トライデントスキル　30秒毎に、トライデントを召喚し　一番近いやつに対して自機狙いで投げつける。
execute as @e[tag=tridentforcus16] as @s run function neofunction:entity/skill/trident16forcus
execute as @e[tag=tridentforcus32] as @s run function neofunction:entity/skill/trident32forcus

#ビリーが侵入した高レベルMOBに対して放つ魔法ファンクションションにすればいいんだけどめんどくさいから放置
execute as @e[type=armor_stand,tag=birivillage,limit=1] at @s as @e[tag=lv4,distance=..32] as @s[tag=enemy] as @e[tag=soul5,limit=1] run function neofunction:asset/skill/47
execute as @e[type=armor_stand,tag=birivillage,limit=1] at @s as @e[tag=lv5,distance=..32] as @s[tag=enemy] as @e[tag=soul5,limit=1] run function neofunction:asset/skill/47
execute as @e[type=armor_stand,tag=birivillage,limit=1] at @s as @e[tag=lv6,distance=..32] as @s[tag=enemy] as @e[tag=soul5,limit=1] run function neofunction:asset/skill/47

#ヴァレリカが色々するスキル
execute as @e[tag=living] at @s run function neofunction:entity/skill/living

#1回被弾60%軽減のシールドを張るやつ
execute if entity @e[tag=dirtshield] run function neofunction:entity/skill/dirtshield

#エキリブリアムが、突進するやつ（1形態）
#execute as @e[tag=blinkattack1] at @s run function neofunction:entity/skill/boss/ekiriburiamu/p1_blinkattack
#execute as @e[tag=blinkattack2] at @s run function neofunction:entity/skill/boss/ekiriburiamu/p2_blinkattack
#execute as @e[tag=blinkattack3] at @s run function neofunction:entity/skill/boss/ekiriburiamu/p3_blinkattack

# エキリブリアムの加護チェンジ
execute as @e[tag=ekiriburiamu] at @s run function neofunction:entity/skill/boss/ekiriburiamu/modechenge
execute as @e[tag=ekirielite] at @s run execute in neodimension:ceresta_festa run fill 999 7 1735 1058 7 1796 air replace fire


# エキリブリアムの加護チェンジ
execute as @e[tag=summonliving] at @s run function neofunction:entity/skill/boss/valerica/summonliving


