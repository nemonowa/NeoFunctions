# 命名：2
# 説明：
# >world
# =/function neofunction:system/world/nexus/tutorial/2

execute align xyz positioned ~-7 ~ ~ as @a[dx=11,dy=11,dz=14] run advancement grant @s only neoadvancement:neo/root
execute align xyz positioned ~-7 ~ ~ as @a[dx=11,dy=11,dz=14] run advancement grant @s only neoadvancement:neoitem/root
execute align xyz positioned ~-7 ~ ~ as @a[dx=11,dy=11,dz=14] run advancement grant @s only neoadvancement:neoentity/root
execute align xyz positioned ~-7 ~ ~ as @a[dx=11,dy=11,dz=14] run advancement grant @s only neoadvancement:anchor/root
execute align xyz positioned ~-7 ~ ~ as @a[dx=11,dy=11,dz=14] run advancement grant @s only neoadvancement:neoskill/root

execute if score star EXP matches 0.. run return run function neofunction:system/world/nexus/tutorial/3
function neofunction:system/world/nexus/tutorial/.neo
execute align xyz positioned ~-7 ~ ~ run data modify block ~6 ~1 ~13 Items set value []
place template neofunction:tutorial/3 ~-7 ~ ~
execute align xyz positioned ~-7 ~ ~ run kill @e[type=item,dx=11,dy=11,dz=14]

execute align xyz positioned ~-7 ~ ~ run advancement revoke @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/3
execute align xyz positioned ~-7 ~ ~ run advancement grant @a[dx=11,dy=11,dz=14] only neoadvancement:nexus/root/1/3

execute align xyz positioned ~-7 ~ ~ run tellraw @a[dx=11,dy=11,dz=14] "§b§l条件：チュートリアル3を完了する。\n§3§l報酬：§fホープスター\n§9§l説明：§d「願いの強さ」§7が§c力§7に直結する§5世界§7\n彼方の君は§b希望を現実に昇華させるための力§7、§3冀求力§7【ききゅうりょく】を行使する術を知る\nあの未来を変えるため冀求力を強化し、§6レベル§7を上げていくために§eホープスター§7を集めよう。それは君の魂に§a記憶§7され、決して失われない力となるから。"
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] title {"text": "レベルの解放","color": "blue","bold": true}
execute align xyz positioned ~-7 ~ ~ run title @a[dx=11,dy=11,dz=14] subtitle {"text": "チュートリアル3","color": "blue","bold": true}

execute align xyz positioned ~-7 ~ ~ run item replace entity @a[dx=11,dy=11,dz=14] enderchest.13 from entity @e[tag=world,limit=1] container.0
