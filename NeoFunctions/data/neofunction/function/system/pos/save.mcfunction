# 命名：save
# 説明：ワールドセッティング
# 説明：近くのアマスタを登録する：/execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest] run function neofunction:system/pos/.save {id:1}
# >function neofunction:system/pos/.save {id:<連番>}
# =/function neofunction:system/pos/save



## 内容
$data modify storage pos:$(id) name set from entity @s CustomName
# 【変更：2026-09-29 26.3対応】転移の処理（.macro）が名前を pos:$(id) からコピーできるよう、地点の番号も保存する（ユーザーの判断）
$data modify storage pos:$(id) id set value $(id)

$execute as @p run data modify storage pos:$(id) dimension set from entity @s Dimension
$data modify storage pos:$(id) x set from entity @s Pos[0]
$data modify storage pos:$(id) y set from entity @s Pos[1]
$data modify storage pos:$(id) z set from entity @s Pos[2]


$data merge entity @s {DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f]},Tags:["marked","roll","pos$(id)"],equipment:{head:{count:1,id:"minecraft:beacon",components:{"minecraft:enchantments":{"minecraft:fortune":1}}}}}

clear @a minecraft:written_book[minecraft:custom_model_data={floats:[-3.0f]}]
execute as @a run function admin:give/backdoor/all


$execute as @s run function neofunction:system/pos/.macro with storage pos:$(id)