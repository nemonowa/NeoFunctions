# 命名：サンドウォーカー
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（ゾンビ枠）。メサの砂の中から起き上がる、坑道で倒れた鉱夫の亡者。鉱夫のヘルメットをかぶった骸骨の頭（minecraft-heads 3126）。紅鉄のかけらを握っていることがある。生成は scratchpad の mesa_mob_gen.py
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/926

summon husk ~ ~ ~ {Silent:1b,CustomName:{"text":"サンドウォーカー","color":"#D8B07A","bold":true,"italic":false},Tags:[lv2,rubra_mesa],DeathLootTable:"neofunction:asset/summon/926",equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYzNmU1M2YzOTU1OTNlZGRjODFlNTExODc4NDU2ZDc3MjRlNTMzMzdhM2Y1YjFkMzI0ZmZiOWUxNjBmNjRjIn19fQ=="}]}}},mainhand:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:enchantments":{"minecraft:knockback":1}}}}}
