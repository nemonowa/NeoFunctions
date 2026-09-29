# 命名：armor_stand
# 説明：
# 説明：実行者　プレイヤー
# >/advancement neofunction:player_interacted_with_entity/armor_stand
# =/function neofunction:system/adv/player_interacted_with_entity/armor_stand

#現状扱うのは防具展示用アマスタ
#固有タグで分岐

#ビリーの野営地
#セレスタリームアーマー
execute as @e[type=armor_stand,tag=leaf,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/leaf
#ライムリーフアーマー
execute as @e[type=armor_stand,tag=limeleaf,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/limeleaf
#ピンチシェル
execute as @e[type=armor_stand,tag=pinch,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/pinch
#海賊装備
execute as @e[type=armor_stand,tag=pirate,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/pirate

#シエラ
#臨界の法衣
execute as @e[type=armor_stand,tag=critical,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/critical
#湧流の法衣
execute as @e[type=armor_stand,tag=gushingstream,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/gushingstream
#堅牢の法衣
execute as @e[type=armor_stand,tag=sturdy,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/sturdy
#反重の法衣
execute as @e[type=armor_stand,tag=antigravity,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/antigravity
#火精霊の羽衣
execute as @e[type=armor_stand,tag=firespirit,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/firespirit
#土精霊の羽衣
execute as @e[type=armor_stand,tag=dirtspirit,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/dirtspirit
#風精霊の羽衣
execute as @e[type=armor_stand,tag=windspirit,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/windspirit
#水精霊の羽衣
execute as @e[type=armor_stand,tag=waterspirit,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/waterspirit
#牧歌と試練の礼装
execute as @e[type=armor_stand,tag=idyllandtrials,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/idyllandtrials


#ルクス
#カエルコスチューム
execute as @e[type=armor_stand,tag=frogcostume,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/frogcostume
#カエルローブ
execute as @e[type=armor_stand,tag=frogrobe,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/frogrobe
#ケロコンバット
execute as @e[type=armor_stand,tag=kerocombat,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/kerocombat
#ケロケブラー
execute as @e[type=armor_stand,tag=kerokevlar,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/kerokevlar
#虐殺と謳歌の礼装(祝祭と豊穣の礼装)
execute as @e[type=armor_stand,tag=festivalandabundance,tag=!complete] run function neofunction:system/adv/player_interacted_with_entity/armor_stand/festivalandabundance



