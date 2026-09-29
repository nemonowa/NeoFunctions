# 命名：objective
# 説明：クエストマーカー？　現状未使用
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/objective



#execute unless entity @e[tag=objective,distance=..4,limit=1,sort=nearest] at @s if entity @a[distance=..8] run summon item_display ~ ~2.7 ~ {Tags:["roll","objective","del10s"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1078480047,-803189091,-1227998630,715952762],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTRlMWRhODgyZTQzNDgyOWI5NmVjOGVmMjQyYTM4NGE1M2Q4OTAxOGZhNjVmZWU1YjM3ZGViMDRlY2NiZjEwZSJ9fX0="}]}}}}
execute unless entity @a[distance=..8] at @s run kill @e[tag=objective,distance=..8,sort=nearest,limit=1]
