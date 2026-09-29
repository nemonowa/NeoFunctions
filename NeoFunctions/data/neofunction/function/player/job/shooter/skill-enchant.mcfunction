# 命名：戦場調理
# 説明：強火なら何でも美味しい！オフハンドに持ったアイテムを燃料なしで即座に焼く（消費SP10）
# >/function neofunction:asset/skill/255
# =/function neofunction:player/job/shooter/skill-enchant


# 着火
execute unless entity @s[nbt={Inventory:[],equipment:{offhand:{}}}] run return run tellraw @s {"text":"オフハンドに調理するアイテムがありません！","color":"red"}
tellraw @s {"text":"美味しく灼けました！","color":"red"}
item modify entity @s weapon.mainhand neofunction:furnace_smelt

# 炎パーティクル演出
particle minecraft:lava ~ ~0.8 ~ 0.2 0.2 0.2 0 10 force
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force

# 着火音
playsound minecraft:entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 0.5 0

# SP消費：
scoreboard players remove @s SP 10




