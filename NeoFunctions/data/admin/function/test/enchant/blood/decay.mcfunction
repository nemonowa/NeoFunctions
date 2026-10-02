# 命名：decay
# 説明：血盟（試作）。最後に当ててから 5 秒たつと、血の印が消える
# 実行条件：血盟の剣を持ち、時間が残っているプレイヤー（エンチャントの tick から）
# >/enchantment neofunction:test/blood
# =/function admin:test/enchant/blood/decay


# 内容
scoreboard players remove @s neo.blood_t 1
execute if score @s neo.blood_t matches ..0 if score @s neo.blood matches 1.. run title @s actionbar {"text":"血盟 消散","color":"dark_gray"}
execute if score @s neo.blood_t matches ..0 run scoreboard players set @s neo.blood 0
