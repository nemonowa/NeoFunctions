# 命名：10s
# 説明：指定tagを持つエンティティを1秒毎に対象
# 説明：条件: 10s
# >/function neofunction:system/clock/10_second.mcfunction
# =/function neofunction:entity/skill/clock/10s

# 全体
#10秒毎に50%の確率でトライデントを投げる
execute as @e[tag=tridentthrow] as @s[predicate=neofunction:random_chance/50] run function neofunction:entity/skill/throw_trident

# tagSkill
execute as @a at @s as @e[tag=akuu] as @s[predicate=neofunction:random_chance/30] run function neofunction:entity/skill/akuu
execute as @a at @s as @e[tag=heal,distance=..32,limit=1] as @s[predicate=neofunction:random_chance/40] run function neofunction:entity/skill/heal
#その他スキル
execute as @a at @s as @e[tag=ikuu] as @s[predicate=neofunction:random_chance/30] run function neofunction:entity/skill/ikuu
execute as @a at @s as @e[tag=abyss] as @s[predicate=neofunction:random_chance/10] run function neofunction:entity/skill/abyss
execute as @a at @s as @e[tag=tarai,distance=..64] as @s[predicate=neofunction:random_chance/10] run function neofunction:entity/skill/tarai
execute as @a at @s as @e[tag=rootmist] as @s[predicate=neofunction:random_chance/50] run function neofunction:entity/skill/rootmist

#エキリブリアムの土属性共通行動のはずだけど不安定なので一旦停止
execute as @e[tag=ekiridirt] at @s run function neofunction:entity/skill/jump_burst/.neo

#10秒毎に風属性のエキリブリアムが少しずつ拡大するAECを落とす
execute as @e[tag=ekiriwind] at @s run function neofunction:entity/skill/boss/ekiriburiamu/windaec

# 火属性えきりのAEC
execute as @e[tag=ekirifire] at @s run function neofunction:entity/skill/boss/ekiriburiamu/fireaec

# 水属性えきりの精霊コンバート
execute as @e[tag=ekiriwater] at @s run function neofunction:entity/skill/boss/ekiriburiamu/wateraec

#エリートエキリブリアムが10秒毎に対象の加護を所持したVexを召喚する。
execute as @e[tag=ekirielite] at @s run function neofunction:asset/summon/660
execute as @e[tag=ekirielite] at @s run function neofunction:asset/summon/664
execute as @e[tag=ekirielite] at @s run function neofunction:asset/summon/668
execute as @e[tag=ekirielite] at @s run function neofunction:asset/summon/672

#エキリブリアムを5秒毎に最寄りのプレイヤーに射出
execute as @e[tag=ekiriburiamu,tag=!JumpBurst1,tag=!ekirifinal] at @s unless entity @e[tag=ekiriFireAEC] run function neofunction:entity/skill/rush

#エリートエキリブリアムを5秒毎に最寄りのプレイヤーに射出
execute as @e[tag=ekirielite,tag=!JumpBurst1] at @s run function neofunction:entity/skill/rush

#ラルーシャ10秒処理
execute as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] at @s run function neofunction:entity/skill/boss/larusha/skill