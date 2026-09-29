# 命名：villager_edit
# 説明：なんか交易品をひとつづつ編集しようとしてる。一列目以外機能してないぽい？。編集終わったらtagは手動で消すぽい。
# >
# =/function admin:villager_edit


tag @e[tag=EditedVillager] remove EditedVillager
tag @e[type=villager,limit=1,sort=nearest,distance=..10] add EditedVillager
scoreboard players set #VillagerEdit.Slot temp 0
function admin:system/villager_edit/view