# 命名：.all
# 説明：進捗達成時
# >/advancement neofunction:fishing_rod_hooked/.all
# =/function neofunction:system/adv/fishing_rod_hooked/.all

## 内容
#釣り竿、
function neofunction:system/adv/fishing_rod_hooked/.get_entity {Name:".all"}

damage @e[tag=hooked,limit=1,sort=nearest] 1 neofunction:aqua by @s

execute if entity @s[advancements={neoadvancement:neoskill/230=true}] run function neofunction:asset/skill/tamer/settarget

#ていまーの鞭調整が難しすぎるので保留。
function neofunction:asset/skill/tamer/fishingrod

playsound minecraft:entity.player.attack.strong record @s ~ ~ ~ 2 1 1
# 【変更：2026-09-27 26.3対応】サウンドイベント entity.leash_knot.break は 26.3 では item.lead.untied（同じ音）に変わった
playsound minecraft:item.lead.untied record @s ~ ~ ~ 2 1.1 1
playsound minecraft:item.lead.untied neutral @s ~ ~ ~ 2 1.6 1
playsound minecraft:entity.player.attack.crit neutral @s ~ ~ ~ 2 1.8 1
playsound minecraft:entity.evoker_fangs.attack neutral @s ~ ~ ~ 2 2.0 1

tag @e[tag=hooked] remove hooked


