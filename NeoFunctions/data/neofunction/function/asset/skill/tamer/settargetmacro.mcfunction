# 命名：settargetmacro
# 説明：
# >/function neofunction:asset/skill/tamer/settarget 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) if entity @s[advancements={neoadvancement:neoskill/230=true}] as @e[tag=familiar] 実行位置@e[tag=hooked,sort=nearest,limit=1]
# =/function neofunction:asset/skill/tamer/settargetmacro


$execute unless entity @s[nbt=!{Owner:$(UUID)},nbt=!{equipment:{feet:{components:{"minecraft:custom_data":{Owner:$(UUID)}}}}}] run damage @s[distance=..32] 0.00001 neofunction:alternate by @e[tag=hooked,limit=1,sort=nearest]

stopsound @a neutral entity.wolf.hurt
stopsound @a neutral entity.iron_golem.hurt
stopsound @a neutral entity.snow_golem.hurt
