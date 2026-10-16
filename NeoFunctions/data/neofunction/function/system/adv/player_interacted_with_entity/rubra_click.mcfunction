# 命名：rubra_click
# 説明：ルブラ編のクリックできる所（interaction、タグ rubra_click）を右クリックしたときの振り分け
# 説明：第一章：星の台（rubra_ped_n・w・s）、星の台の間の鐘（rubra_bell）、欠片の選択（rubra_bury・rubra_take。今はチャットで選ぶ）
# 説明：第二章：滝の裏の扉（rubra_gate）、青銅の輪（rubra_valve_0・e・w・n・flush）、栓の穴（rubra_plug）、北の鍵穴（rubra_northlock）、拾い物（rubra_pick_key・plug・j2・tear）、番人の間の水門（rubra_kvalve）
# 説明：第三章：反転の間の扉（rubra_invdoor）、星喰みのセレンのまわりの欠片（rubra_fraghit：守り石で引き剥がす）、道中の結晶の封（rubra_xtalhit）
# 実行条件：実行者 プレイヤー
# >/advancement neofunction:player_interacted_with_entity/rubra_click
# =/function neofunction:system/adv/player_interacted_with_entity/rubra_click

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_interacted_with_entity/rubra_click

## 内容
execute as @e[type=interaction,tag=rubra_click,distance=..8] if data entity @s interaction run tag @s add rubra_clicked
execute as @e[type=interaction,tag=rubra_clicked] run data remove entity @s interaction
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_ped_n] run function neofunction:system/world/ceresta/rubra/d1/ped/click {p:"n"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_ped_w] run function neofunction:system/world/ceresta/rubra/d1/ped/click {p:"w"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_ped_s] run function neofunction:system/world/ceresta/rubra/d1/ped/click {p:"s"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_bell] run function neofunction:system/world/ceresta/rubra/d1/ped/ring
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_bury] run function neofunction:system/adv/tick/quest/40/d1/choice_bury
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_take] run function neofunction:system/adv/tick/quest/40/d1/choice_take
# 第二章（涸れ泉の聖堂）
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_gate] run function neofunction:system/world/ceresta/rubra/d2/gate
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_valve_0] run function neofunction:system/world/ceresta/rubra/d2/water/valve_z
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_valve_e] run function neofunction:system/world/ceresta/rubra/d2/water/valve {r:"e"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_valve_w] run function neofunction:system/world/ceresta/rubra/d2/water/valve {r:"w"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_valve_n] run function neofunction:system/world/ceresta/rubra/d2/water/valve {r:"n"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_plug] run function neofunction:system/world/ceresta/rubra/d2/water/plug
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_northlock] run function neofunction:system/world/ceresta/rubra/d2/water/northlock
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_key] run function neofunction:system/world/ceresta/rubra/d2/pick {k:"key"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_plug] run function neofunction:system/world/ceresta/rubra/d2/pick {k:"plug"}
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_j2] run function neofunction:system/world/ceresta/rubra/d2/pick {k:"j2"}
# 黒い水の水門は二つ（rubra_fvalve_1・2）。両方開くと flush
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fvalve] run function neofunction:system/world/ceresta/rubra/d2/fvalve
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_kvalve] run function neofunction:entity/skill/boss/rubra_keeper/valve
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_tear] run function neofunction:system/adv/tick/quest/40/d2/tear
# 第三章（零の揺籃）
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_invdoor] run function neofunction:system/world/ceresta/rubra/d3/invdoor
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_fraghit] run function neofunction:entity/skill/boss/rubra_cradle/pull_start
# 道中の結晶の封（守り石で引き剥がす練習）
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_xtalhit] run function neofunction:system/world/ceresta/rubra/d3/xtal/click
# 街に置いたアズールの手記（その一・三・四）
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_pick_jf] run function neofunction:system/world/ceresta/rubra/jpick
# 第一章（作り直し）：一の層の詰所のレバー（rubra_l1lever）
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_l1lever] run function neofunction:system/world/ceresta/rubra/d1/l1gate_open
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_l3bridge] run function neofunction:system/world/ceresta/rubra/d1/l3bridge
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_skyselen] run function neofunction:system/world/ceresta/rubra/fin/refight/talk
# 星鍛冶の金床（強化）
execute if entity @e[type=interaction,tag=rubra_clicked,tag=rubra_forge] run function neofunction:system/world/ceresta/rubra/mine/forge
tag @e[type=interaction,tag=rubra_clicked] remove rubra_clicked
