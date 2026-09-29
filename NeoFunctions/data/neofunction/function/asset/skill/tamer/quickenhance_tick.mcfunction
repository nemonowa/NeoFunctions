# 命名：tamer/quickenhance_tick
# 説明：quickEnhanceBuffedタグを持つ対象(237で強化した個体)を20tick毎に監視し、
#       発光効果(minecraft:glowing)が切れていたらチームをwhiteへ戻し、タグを外す。
#       対象がいなくなれば自然停止する。
# >/function neofunction:asset/skill/tamer/quickenhance_start 実行者unless entity @e[tag=tamerQuickEnhanceLoopRunning] 実行位置0 0 0
# =/function neofunction:asset/skill/tamer/quickenhance_tick

execute unless entity @e[tag=quickEnhanceBuffed] run return run kill @e[tag=tamerQuickEnhanceLoopRunning]

execute as @a[tag=quickEnhanceBuffed] unless entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run team join white @s
execute as @a[tag=quickEnhanceBuffed] unless entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run tag @s remove quickEnhanceBuffed

execute as @e[tag=familiar,tag=quickEnhanceBuffed] unless entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run team join white @s
execute as @e[tag=familiar,tag=quickEnhanceBuffed] unless entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run tag @s remove quickEnhanceBuffed

schedule function neofunction:asset/skill/tamer/quickenhance_tick 20t append
