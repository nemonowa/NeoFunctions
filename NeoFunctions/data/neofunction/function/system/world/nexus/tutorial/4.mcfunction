# 命名：4
# 説明：
# >world
# =/function neofunction:system/world/nexus/tutorial/4

function neofunction:system/world/nexus/tutorial/.neo
place template neofunction:tutorial/5 ~-7 ~ ~
execute align xyz positioned ~-7 ~ ~ run kill @e[type=item,dx=11,dy=11,dz=14]

execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/5
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/5
execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/6
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/6
execute align xyz positioned ~-7 ~ ~ run tellraw @a[dx=11,dy=11,dz=14] "§b§l条件：チュートリアル5を完了する。\n§3§l報酬：§fスキル「存在解析」の解放\n§9§l説明：§7それは未知の§9知識端末§7\n異空兵装の第一形態にして、§eバッチ§7のような徽章端末から表示される§6ホロディスプレイ§7。ステータス情報や§5必須スキル§7が格納されている。貴官専用のNEXUSへのパスポート。\n§dシフトスキル§7で対象の情報を解析し、見つけたアンカーを攻略及び転移が可能にする！"
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] title {"text": "兵装変形について：異空の徽章","color": "blue","bold": true}
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] subtitle {"text": "チュートリアル5","color": "blue","bold": true}

