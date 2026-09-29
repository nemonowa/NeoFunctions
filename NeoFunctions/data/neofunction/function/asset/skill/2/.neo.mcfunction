# 命名：.neo
# 説明：存在解析処理
# 実行条件：解析対象が起点。@e[limit=1,sort=nearest,distance=0.1..6]
# >/function neofunction:asset/skill/2
# =/function neofunction:asset/skill/2/.neo


# Intercept
execute as @s[tag=c.o.] run return run tellraw @a[distance=..8,tag=skill2] [{"text":"アクセス権限なし。"}]

# 演出：
effect give @s minecraft:glowing 3 0
function neofunction:asset/particle/.mp_heal

# 個別
execute as @s[tag=posTutorial] at @s run return run function neofunction:asset/skill/2/tutorial_anchor
execute as @s[tag=marked] at @s run return run function neofunction:asset/skill/2/anchor

# 字幕：
execute as @s at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"+++-———————————————————————"}]

# 分類1：チーム
execute as @s[tag=obj,type=!item] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象はオブジェクトです。"}]
execute as @s[tag=ally] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象は"},{"text":"友好","color":"green"},{"text":"エンティティです。"}]
execute as @s[tag=safe] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象は"},{"text":"中立","color":"gray"},{"text":"エンティティです。"}]
execute as @s[tag=enemy] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"解析対象は"},{"text":"敵対","color":"red"},{"text":"エンティティです。"}]

# 個別
execute as @s[type=item] run function neofunction:asset/skill/2/item

# 分類2：レベル
execute as @s[tag=mob] at @s run function neofunction:asset/skill/2/lvl

# エンティティの格：ボスフラグ
execute as @s[tag=mob] at @s run function neofunction:asset/skill/2/boss

# 属性：
execute as @s[tag=enemy] at @s run function neofunction:asset/skill/2/soul

# 種族：タイプ
execute as @s[tag=mob] at @s run function neofunction:asset/skill/2/type

# 分類3：スキル
execute as @s[tag=!lv0] at @s run function neofunction:asset/skill/2/skill

# 個体名：
execute as @s at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"個体名："},{"selector":"@s"}]

# ステータス
execute as @s[tag=mob] at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"耐久力："},{"nbt":"Health","entity":"@s"}]
execute if data entity @s[tag=mob] attributes[{id:"minecraft:attack_damage"}].base at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"攻撃力："},{"nbt":"Attributes[{Name:\"minecraft:attack_damage\"}].Base","entity":"@s"}]
execute if data entity @s[tag=mob] attributes[{id:"minecraft:armor"}].base at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"防御力："},{"nbt":"Attributes[{Name:\"minecraft:generic.armor\"}].Base","entity":"@s"}]

execute as @s at @s run tellraw @a[distance=..8,tag=skill2] [{"text":"———————————————————————-+++"}]