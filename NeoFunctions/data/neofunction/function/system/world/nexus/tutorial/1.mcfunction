# 命名：1
# 説明：
# >world
# =/function neofunction:system/world/nexus/tutorial/1

function neofunction:system/world/nexus/tutorial/.neo
place template neofunction:tutorial/2 ~-7 ~ ~
execute align xyz positioned ~-7 ~ ~ run kill @e[type=item,dx=11,dy=11,dz=14]

execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/1
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/1
execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/2
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/2
execute align xyz positioned ~-7 ~ ~ run tellraw @a[dx=11,dy=11,dz=14] "§b§l条件：チュートリアル2を完了する。\n§3§l報酬：§f/trigger kill\n§9§l説明：§7ようこそ§a新世界§7へ！\nここから先は君の§1「常識」§7は通用しない。世界の仕組みは再構成され、真に混沌とした、§d最高にクレイジーな不条理§7が君を新たな次元へ誘うだろう。"
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] title {"text": "進捗を見よう","color": "blue","bold": true}
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] subtitle {"text": "チュートリアル2","color": "blue","bold": true}
