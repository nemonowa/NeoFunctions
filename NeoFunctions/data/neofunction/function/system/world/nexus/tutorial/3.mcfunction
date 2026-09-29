# 命名：3
# 説明：
# >world
# =/function neofunction:system/world/nexus/tutorial/3

execute unless score star EXP matches 0.. run fill ~-1 ~ ~ ~-1 ~ ~ lapis_block replace redstone_block
execute unless score star EXP matches 0.. align xyz positioned ~-7 ~ ~ run return run tellraw @a[dx=11,dy=11,dz=14] {"text": "レベルを解放すると進行可能","color": "red"}
function neofunction:system/world/nexus/tutorial/.neo
place template neofunction:tutorial/4 ~-7 ~ ~
execute align xyz positioned ~-7 ~ ~ run kill @e[type=item,dx=11,dy=11,dz=14]

execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/3
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/3
execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/4
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/4
execute align xyz positioned ~-7 ~ ~ run tellraw @a[dx=11,dy=11,dz=14] "§b§l条件：チュートリアル4を完了する。\n§3§l報酬：§f「スキルメモリー」の解放\n§9§l説明：§dスキルポケット§7から取り出したアイテムには色々な§5スキル§7が格納されている。この異空兵装こそが§e貴方専用の武器§7であり、計器であり、真の意味で§6貴官固有の兵器§7となりうる。はじめは説明を読みながら少しずつ研究してみるといいだろう。\n特に§2重要な操作§7として、空中に放り§a投げて§7アイテムの§a形態を変化§7させる§d「兵装変形」§7とアイテムをメインハンドに持ち§a一定時間しゃがんで§7発動する§d「シフトスキル」§7は憶えておこう！"
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] title {"text": "兵装変形について：異空の火器","color": "blue","bold": true}
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] subtitle {"text": "チュートリアル4","color": "blue","bold": true}
execute align xyz positioned ~-7 ~ ~ as @a[dx=11,dy=11,dz=14] at @s run tp @s ~ ~3 ~
