# 命名：6
# 説明：
# >world
# =/function neofunction:system/world/nexus/tutorial/6

function neofunction:system/world/nexus/tutorial/.neo
place template neofunction:tutorial/7 ~-7 ~ ~
execute align xyz positioned ~-7 ~ ~ run kill @e[type=item,dx=11,dy=11,dz=14]

execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/8
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/8
execute align xyz positioned ~-7 ~ ~ run tellraw @a[dx=11,dy=11,dz=14] "§b§l条件：チュートリアル7を完了する。\n§3§l報酬：§fスキル「転移要請」の解放\n§9§l説明：§7それは未知の§9透明球体§7\n異空兵装の第三形態にして、本体は透明の球体で、内部には四方向以上を示す羅針が、外部には§e衛星起動§7のように周回している。持ち主の§5目指すべき道§7を示す§6羅針盤§7。\n§dシフトスキル§7であらゆる次元からでもNEXUSに帰還できる！"
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] title {"text": "兵装変形について：異空の計器","color": "blue","bold": true}
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] subtitle {"text": "チュートリアル7","color": "blue","bold": true}

