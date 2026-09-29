# 命名：503
# 説明：トリガー
# >/function neofunction:system/trigger/code
# =/function neofunction:system/trigger/code/503


## 内容：エリートチャレンジ：グラズヴェルを起動

execute if entity @s[tag=EliteFrogBoss] run return 0
#既に存在している場合召喚できない、
execute if entity @e[tag=FrogBoss] run return run tellraw @s "ボスとの戦闘が進行中です。すべての戦闘が終了してから再度挑戦してください。"

effect give @a[distance=..32] minecraft:darkness 12 127 true

tag @a[distance=..16] add EliteFrogBoss

data modify storage neofunction:enemy/frog_boss Talks set value [{Text:'{"translate":"<%1$s> 「───聞け。世界を浸す、我が軍勢の啼鳴を。」","with":[{"text":"Le Roi Batracien Glaz-Vell","color":"dark_green","bold":true,"italic":false}]}',Sound:{Sound:"entity.frog.hurt",Pitch:1}},{Text:'{"translate":"<%1$s> 「これより先は泥濘の底。光の届かぬ、我が絶対領域なり。」","with":[{"text":"Le Roi Batracien Glaz-Vell","color":"dark_green","bold":true,"italic":false}]}',Sound:{Sound:"entity.frog.hurt",Pitch:1}}]
execute as @a[tag=EliteFrogBoss] run function neofunction:asset/event/talk/.neo {Path:"neofunction:enemy/frog_boss Talks"}

schedule function neofunction:entity/skill/boss/frog_boss/elite/start 12s
