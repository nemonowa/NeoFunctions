# 命名：5_storage
# 説明：ワールドセッティング
# 実行条件：初回ロード
# >/function neofunction:system/setting
# =/function neofunction:system/setting/5_storage



## 内容
tellraw @a[gamemode=creative] {"text":"Ready! > neofunction:system/setting/5_storage"}

#基礎ステータス
function neofunction:asset/data/once

# チュートリアル使用状況
execute unless data storage neofunction:tutorial room run data modify storage neofunction:tutorial room set value [[[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b]],[[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b]],[[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b]],[[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b],[0b,0b,0b,0b,0b,0b]]]

# 音楽リセット
data remove storage neofunction:music Music

# 世界の再起動を見るためのストレージ(AJ用)
data modify storage neofunction:aj ServerCount set value 1

## 改良型作業台のレシピ登録
# 初期化
data modify storage neofunction:crafter crafter_recipe set value []

# 布
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:10b,id:"minecraft:string"}],result:[{count:1,CustomModelData:733,Slot:16b}]}

# エンチャ金リンゴ
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:gold_block"},{count:1,Slot:1b,id:"minecraft:gold_block"},{count:1,Slot:2b,id:"minecraft:gold_block"},{count:1,Slot:9b,id:"minecraft:gold_block"},{count:1,Slot:10b,id:"minecraft:apple"},{count:1,Slot:11b,id:"minecraft:gold_block"},{count:1,Slot:18b,id:"minecraft:gold_block"},{count:1,Slot:19b,id:"minecraft:gold_block"},{count:1,Slot:20b,id:"minecraft:gold_block"}],result:[{count:1,Slot:16b,id:"minecraft:enchanted_golden_apple"}]}

# チェーン頭 (砂利)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:gravel"},{count:1,Slot:1b,id:"minecraft:gravel"},{count:1,Slot:2b,id:"minecraft:gravel"},{count:1,Slot:9b,id:"minecraft:gravel"},{count:1,Slot:11b,id:"minecraft:gravel"}],result:[{count:1,CustomModelData:978,Slot:16b}]}
# チェーン頭2 (砂利)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:gravel"},{count:1,Slot:10b,id:"minecraft:gravel"},{count:1,Slot:11b,id:"minecraft:gravel"},{count:1,Slot:18b,id:"minecraft:gravel"},{count:1,Slot:20b,id:"minecraft:gravel"}],result:[{count:1,CustomModelData:978,Slot:16b}]}
# チェーン胴 (砂利)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:gravel"},{count:1,Slot:2b,id:"minecraft:gravel"},{count:1,Slot:9b,id:"minecraft:gravel"},{count:1,Slot:10b,id:"minecraft:gravel"},{count:1,Slot:11b,id:"minecraft:gravel"},{count:1,Slot:18b,id:"minecraft:gravel"},{count:1,Slot:19b,id:"minecraft:gravel"},{count:1,Slot:20b,id:"minecraft:gravel"}],result:[{count:1,CustomModelData:979,Slot:16b}]}
# チェーン脚 (砂利)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:gravel"},{count:1,Slot:1b,id:"minecraft:gravel"},{count:1,Slot:2b,id:"minecraft:gravel"},{count:1,Slot:9b,id:"minecraft:gravel"},{count:1,Slot:11b,id:"minecraft:gravel"},{count:1,Slot:18b,id:"minecraft:gravel"},{count:1,Slot:20b,id:"minecraft:gravel"}],result:[{count:1,CustomModelData:980,Slot:16b}]}
# チェーン足 (砂利)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:gravel"},{count:1,Slot:2b,id:"minecraft:gravel"},{count:1,Slot:9b,id:"minecraft:gravel"},{count:1,Slot:11b,id:"minecraft:gravel"}],result:[{count:1,CustomModelData:981,Slot:16b}]}
# チェーン足2 (砂利)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:gravel"},{count:1,Slot:11b,id:"minecraft:gravel"},{count:1,Slot:18b,id:"minecraft:gravel"},{count:1,Slot:20b,id:"minecraft:gravel"}],result:[{count:1,CustomModelData:981,Slot:16b}]}

# チェーン頭 (チェーン)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:chain"},{count:1,Slot:1b,id:"minecraft:chain"},{count:1,Slot:2b,id:"minecraft:chain"},{count:1,Slot:9b,id:"minecraft:chain"},{count:1,Slot:11b,id:"minecraft:chain"}],result:[{count:1,CustomModelData:978,Slot:16b}]}
# チェーン頭2 (チェーン)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:chain"},{count:1,Slot:10b,id:"minecraft:chain"},{count:1,Slot:11b,id:"minecraft:chain"},{count:1,Slot:18b,id:"minecraft:chain"},{count:1,Slot:20b,id:"minecraft:chain"}],result:[{count:1,CustomModelData:978,Slot:16b}]}
# チェーン胴 (チェーン)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:chain"},{count:1,Slot:2b,id:"minecraft:chain"},{count:1,Slot:9b,id:"minecraft:chain"},{count:1,Slot:10b,id:"minecraft:chain"},{count:1,Slot:11b,id:"minecraft:chain"},{count:1,Slot:18b,id:"minecraft:chain"},{count:1,Slot:19b,id:"minecraft:chain"},{count:1,Slot:20b,id:"minecraft:chain"}],result:[{count:1,CustomModelData:979,Slot:16b}]}
# チェーン脚 (チェーン)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:chain"},{count:1,Slot:1b,id:"minecraft:chain"},{count:1,Slot:2b,id:"minecraft:chain"},{count:1,Slot:9b,id:"minecraft:chain"},{count:1,Slot:11b,id:"minecraft:chain"},{count:1,Slot:18b,id:"minecraft:chain"},{count:1,Slot:20b,id:"minecraft:chain"}],result:[{count:1,CustomModelData:980,Slot:16b}]}
# チェーン足 (チェーン)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:chain"},{count:1,Slot:2b,id:"minecraft:chain"},{count:1,Slot:9b,id:"minecraft:chain"},{count:1,Slot:11b,id:"minecraft:chain"}],result:[{count:1,CustomModelData:981,Slot:16b}]}
# チェーン足2 (チェーン)
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:chain"},{count:1,Slot:11b,id:"minecraft:chain"},{count:1,Slot:18b,id:"minecraft:chain"},{count:1,Slot:20b,id:"minecraft:chain"}],result:[{count:1,CustomModelData:981,Slot:16b}]}

# 布4か所
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:string"},{count:1,Slot:1b,id:"minecraft:string"},{count:1,Slot:9b,id:"minecraft:string"},{count:1,Slot:10b,id:"minecraft:string"}],result:[{count:1,CustomModelData:733,Slot:16b}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:1b,id:"minecraft:string"},{count:1,Slot:2b,id:"minecraft:string"},{count:1,Slot:10b,id:"minecraft:string"},{count:1,Slot:11b,id:"minecraft:string"}],result:[{count:1,CustomModelData:733,Slot:16b}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:string"},{count:1,Slot:10b,id:"minecraft:string"},{count:1,Slot:18b,id:"minecraft:string"},{count:1,Slot:19b,id:"minecraft:string"}],result:[{count:1,CustomModelData:733,Slot:16b}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:string"},{count:1,Slot:10b,id:"minecraft:string"},{count:1,Slot:18b,id:"minecraft:string"},{count:1,Slot:19b,id:"minecraft:string"}],result:[{count:1,CustomModelData:733,Slot:16b}]}

# 厚地の布4か所
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:733,Slot:0b},{count:1,CustomModelData:733,Slot:1b},{count:1,CustomModelData:733,Slot:9b},{count:1,CustomModelData:733,Slot:10b}],result:[{count:1,CustomModelData:734,Slot:16b}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:733,Slot:1b},{count:1,CustomModelData:733,Slot:2b},{count:1,CustomModelData:733,Slot:10b},{count:1,CustomModelData:733,Slot:11b}],result:[{count:1,CustomModelData:734,Slot:16b}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:733,Slot:9b},{count:1,CustomModelData:733,Slot:10b},{count:1,CustomModelData:733,Slot:18b},{count:1,CustomModelData:733,Slot:19b}],result:[{count:1,CustomModelData:734,Slot:16b}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:733,Slot:10b},{count:1,CustomModelData:733,Slot:11b},{count:1,CustomModelData:733,Slot:19b},{count:1,CustomModelData:733,Slot:20b}],result:[{count:1,CustomModelData:734,Slot:16b}]}

# 省エネ樽64
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:64,Slot:0b,id:"minecraft:oak_planks"},{count:64,Slot:2b,id:"minecraft:oak_planks"},{count:64,Slot:9b,id:"minecraft:oak_planks"},{count:64,Slot:10b,id:"minecraft:oak_planks"},{count:64,Slot:11b,id:"minecraft:oak_planks"},{count:64,Slot:18b,id:"minecraft:oak_planks"},{count:64,Slot:20b,id:"minecraft:oak_planks"}],result:[{count:64,Slot:16b,id:"minecraft:barrel"}]}

# 省エネホッパー
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:iron_ingot"},{count:1,Slot:1b,id:"minecraft:chest"},{count:1,Slot:2b,id:"minecraft:iron_ingot"},{count:1,Slot:10b,id:"minecraft:iron_ingot"}],result:[{count:1,Slot:16b,id:"minecraft:hopper"}]}
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:iron_ingot"},{count:1,Slot:10b,id:"minecraft:chest"},{count:1,Slot:11b,id:"minecraft:iron_ingot"},{count:1,Slot:19b,id:"minecraft:iron_ingot"}],result:[{count:1,Slot:16b,id:"minecraft:hopper"}]}

# ヤギの角笛 歌声
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:disc_fragment_5"},{count:1,Slot:2b,id:"minecraft:disc_fragment_5"},{count:1,Slot:10b,id:"minecraft:dripstone_block"},{count:1,Slot:18b,id:"minecraft:disc_fragment_5"},{count:1,Slot:20b,id:"minecraft:disc_fragment_5"}],result:[{count:1,Slot:16b,id:"minecraft:goat_horn",components:{"minecraft:instrument":"minecraft:sing_goat_horn"}}]}
# ヤギの角笛 沈心
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:1b,id:"minecraft:disc_fragment_5"},{count:1,Slot:9b,id:"minecraft:disc_fragment_5"},{count:1,Slot:10b,id:"minecraft:dripstone_block"},{count:1,Slot:11b,id:"minecraft:disc_fragment_5"},{count:1,Slot:19b,id:"minecraft:disc_fragment_5"}],result:[{count:1,Slot:16b,id:"minecraft:goat_horn",components:{"minecraft:instrument":"minecraft:ponder_goat_horn"}}]}

# リカバリーコンパス
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:ender_pearl"},{count:1,Slot:1b,id:"minecraft:amethyst_shard"},{count:1,Slot:2b,id:"minecraft:ender_pearl"},{count:1,Slot:9b,id:"minecraft:amethyst_shard"},{count:1,Slot:10b,id:"minecraft:compass"},{count:1,Slot:11b,id:"minecraft:amethyst_shard"},{count:1,Slot:18b,id:"minecraft:ender_pearl"},{count:1,Slot:19b,id:"minecraft:amethyst_shard"},{count:1,Slot:20b,id:"minecraft:ender_pearl"}],result:[{count:1,Slot:16b,id:"minecraft:recovery_compass"}]}

# 潮装
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1263,Slot:0b},{count:1,CustomModelData:1263,Slot:1b},{count:1,CustomModelData:1263,Slot:2b},{count:1,CustomModelData:1263,Slot:9b},{count:1,CustomModelData:1263,Slot:11b}],result:[{count:1,CustomModelData:1266,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1263,Slot:9b},{count:1,CustomModelData:1263,Slot:10b},{count:1,CustomModelData:1263,Slot:11b},{count:1,CustomModelData:1263,Slot:18b},{count:1,CustomModelData:1263,Slot:20b}],result:[{count:1,CustomModelData:1266,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1263,Slot:0b},{count:1,CustomModelData:1263,Slot:2b},{count:1,CustomModelData:1263,Slot:9b},{count:1,CustomModelData:1263,Slot:10b},{count:1,CustomModelData:1263,Slot:11b},{count:1,CustomModelData:1263,Slot:18b},{count:1,CustomModelData:1263,Slot:19b},{count:1,CustomModelData:1263,Slot:20b}],result:[{count:1,CustomModelData:1267,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1263,Slot:0b},{count:1,CustomModelData:1263,Slot:1b},{count:1,CustomModelData:1263,Slot:2b},{count:1,CustomModelData:1263,Slot:9b},{count:1,CustomModelData:1263,Slot:11b},{count:1,CustomModelData:1263,Slot:18b},{count:1,CustomModelData:1263,Slot:20b}],result:[{count:1,CustomModelData:1268,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1263,Slot:0b},{count:1,CustomModelData:1263,Slot:2b},{count:1,CustomModelData:1263,Slot:9b},{count:1,CustomModelData:1263,Slot:11b}],result:[{count:1,CustomModelData:1269,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1263,Slot:9b},{count:1,CustomModelData:1263,Slot:11b},{count:1,CustomModelData:1263,Slot:18b},{count:1,CustomModelData:1263,Slot:20b}],result:[{count:1,CustomModelData:1269,Slot:16b}]}

# 雨潮装
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1264,Slot:0b},{count:1,CustomModelData:1264,Slot:1b},{count:1,CustomModelData:1264,Slot:2b},{count:1,CustomModelData:1264,Slot:9b},{count:1,CustomModelData:1264,Slot:11b}],result:[{count:1,CustomModelData:1270,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1264,Slot:9b},{count:1,CustomModelData:1264,Slot:10b},{count:1,CustomModelData:1264,Slot:11b},{count:1,CustomModelData:1264,Slot:18b},{count:1,CustomModelData:1264,Slot:20b}],result:[{count:1,CustomModelData:1270,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1264,Slot:0b},{count:1,CustomModelData:1264,Slot:2b},{count:1,CustomModelData:1264,Slot:9b},{count:1,CustomModelData:1264,Slot:10b},{count:1,CustomModelData:1264,Slot:11b},{count:1,CustomModelData:1264,Slot:18b},{count:1,CustomModelData:1264,Slot:19b},{count:1,CustomModelData:1264,Slot:20b}],result:[{count:1,CustomModelData:1271,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1264,Slot:0b},{count:1,CustomModelData:1264,Slot:1b},{count:1,CustomModelData:1264,Slot:2b},{count:1,CustomModelData:1264,Slot:9b},{count:1,CustomModelData:1264,Slot:11b},{count:1,CustomModelData:1264,Slot:18b},{count:1,CustomModelData:1264,Slot:20b}],result:[{count:1,CustomModelData:1272,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1264,Slot:0b},{count:1,CustomModelData:1264,Slot:2b},{count:1,CustomModelData:1264,Slot:9b},{count:1,CustomModelData:1264,Slot:11b}],result:[{count:1,CustomModelData:1273,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1264,Slot:9b},{count:1,CustomModelData:1264,Slot:11b},{count:1,CustomModelData:1264,Slot:18b},{count:1,CustomModelData:1264,Slot:20b}],result:[{count:1,CustomModelData:1273,Slot:16b}]}

# 雷潮装
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1265,Slot:9b},{count:1,CustomModelData:1265,Slot:10b},{count:1,CustomModelData:1265,Slot:11b},{count:1,CustomModelData:1265,Slot:18b},{count:1,CustomModelData:1265,Slot:20b}],result:[{count:1,CustomModelData:1274,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1265,Slot:0b},{count:1,CustomModelData:1265,Slot:1b},{count:1,CustomModelData:1265,Slot:2b},{count:1,CustomModelData:1265,Slot:9b},{count:1,CustomModelData:1265,Slot:11b}],result:[{count:1,CustomModelData:1274,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1265,Slot:0b},{count:1,CustomModelData:1265,Slot:2b},{count:1,CustomModelData:1265,Slot:9b},{count:1,CustomModelData:1265,Slot:10b},{count:1,CustomModelData:1265,Slot:11b},{count:1,CustomModelData:1265,Slot:18b},{count:1,CustomModelData:1265,Slot:19b},{count:1,CustomModelData:1265,Slot:20b}],result:[{count:1,CustomModelData:1275,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1265,Slot:0b},{count:1,CustomModelData:1265,Slot:1b},{count:1,CustomModelData:1265,Slot:2b},{count:1,CustomModelData:1265,Slot:9b},{count:1,CustomModelData:1265,Slot:11b},{count:1,CustomModelData:1265,Slot:18b},{count:1,CustomModelData:1265,Slot:20b}],result:[{count:1,CustomModelData:1276,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1265,Slot:9b},{count:1,CustomModelData:1265,Slot:11b},{count:1,CustomModelData:1265,Slot:18b},{count:1,CustomModelData:1265,Slot:20b}],result:[{count:1,CustomModelData:1277,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1265,Slot:0b},{count:1,CustomModelData:1265,Slot:2b},{count:1,CustomModelData:1265,Slot:9b},{count:1,CustomModelData:1265,Slot:11b}],result:[{count:1,CustomModelData:1277,Slot:16b}]}

# ドラゴンズメイル
# ドラゴンズ✹メイル
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:194,Slot:9b},{count:1,CustomModelData:194,Slot:10b},{count:1,CustomModelData:194,Slot:11b},{count:1,CustomModelData:194,Slot:18b},{count:1,CustomModelData:194,Slot:20b}],result:[{count:1,CustomModelData:775,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:194,Slot:0b},{count:1,CustomModelData:194,Slot:1b},{count:1,CustomModelData:194,Slot:2b},{count:1,CustomModelData:194,Slot:9b},{count:1,CustomModelData:194,Slot:11b}],result:[{count:1,CustomModelData:775,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:194,Slot:0b},{count:1,CustomModelData:194,Slot:2b},{count:1,CustomModelData:194,Slot:9b},{count:1,CustomModelData:194,Slot:10b},{count:1,CustomModelData:194,Slot:11b},{count:1,CustomModelData:194,Slot:18b},{count:1,CustomModelData:194,Slot:19b},{count:1,CustomModelData:194,Slot:20b}],result:[{count:1,CustomModelData:776,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:194,Slot:0b},{count:1,CustomModelData:194,Slot:1b},{count:1,CustomModelData:194,Slot:2b},{count:1,CustomModelData:194,Slot:9b},{count:1,CustomModelData:194,Slot:11b},{count:1,CustomModelData:194,Slot:18b},{count:1,CustomModelData:194,Slot:20b}],result:[{count:1,CustomModelData:777,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:194,Slot:9b},{count:1,CustomModelData:194,Slot:11b},{count:1,CustomModelData:194,Slot:18b},{count:1,CustomModelData:194,Slot:20b}],result:[{count:1,CustomModelData:778,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:194,Slot:0b},{count:1,CustomModelData:194,Slot:2b},{count:1,CustomModelData:194,Slot:9b},{count:1,CustomModelData:194,Slot:11b}],result:[{count:1,CustomModelData:778,Slot:16b}]}

# ドラゴンズソード
# ドラゴンズ✹ソード
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:195,Slot:1b},{count:1,CustomModelData:195,Slot:10b},{count:1,CustomModelData:195,Slot:19b}],result:[{count:1,CustomModelData:772,Slot:16b}]}

# ユッカアーマー
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:cactus"},{count:1,Slot:10b,id:"minecraft:cactus"},{count:1,Slot:11b,id:"minecraft:cactus"},{count:1,Slot:18b,id:"minecraft:cactus"},{count:1,Slot:20b,id:"minecraft:cactus"}],result:[{count:1,CustomModelData:821,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:cactus"},{count:1,Slot:1b,id:"minecraft:cactus"},{count:1,Slot:2b,id:"minecraft:cactus"},{count:1,Slot:9b,id:"minecraft:cactus"},{count:1,Slot:11b,id:"minecraft:cactus"}],result:[{count:1,CustomModelData:821,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:cactus"},{count:1,Slot:2b,id:"minecraft:cactus"},{count:1,Slot:9b,id:"minecraft:cactus"},{count:1,Slot:10b,id:"minecraft:cactus"},{count:1,Slot:11b,id:"minecraft:cactus"},{count:1,Slot:18b,id:"minecraft:cactus"},{count:1,Slot:19b,id:"minecraft:cactus"},{count:1,Slot:20b,id:"minecraft:cactus"}],result:[{count:1,CustomModelData:822,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:cactus"},{count:1,Slot:1b,id:"minecraft:cactus"},{count:1,Slot:2b,id:"minecraft:cactus"},{count:1,Slot:9b,id:"minecraft:cactus"},{count:1,Slot:11b,id:"minecraft:cactus"},{count:1,Slot:18b,id:"minecraft:cactus"},{count:1,Slot:20b,id:"minecraft:cactus"}],result:[{count:1,CustomModelData:823,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:9b,id:"minecraft:cactus"},{count:1,Slot:11b,id:"minecraft:cactus"},{count:1,Slot:18b,id:"minecraft:cactus"},{count:1,Slot:20b,id:"minecraft:cactus"}],result:[{count:1,CustomModelData:824,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,Slot:0b,id:"minecraft:cactus"},{count:1,Slot:2b,id:"minecraft:cactus"},{count:1,Slot:9b,id:"minecraft:cactus"},{count:1,Slot:11b,id:"minecraft:cactus"}],result:[{count:1,CustomModelData:824,Slot:16b}]}

# 小麦アーマー
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:10,CustomModelData:1422,Slot:0b},{count:10,CustomModelData:1422,Slot:1b},{count:10,CustomModelData:1422,Slot:2b},{count:10,CustomModelData:1422,Slot:9b},{count:10,CustomModelData:1422,Slot:11b}],result:[{count:1,CustomModelData:1418,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:10,CustomModelData:1422,Slot:9b},{count:10,CustomModelData:1422,Slot:10b},{count:10,CustomModelData:1422,Slot:11b},{count:10,CustomModelData:1422,Slot:18b},{count:10,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1418,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:10,CustomModelData:1422,Slot:0b},{count:10,CustomModelData:1422,Slot:2b},{count:10,CustomModelData:1422,Slot:9b},{count:10,CustomModelData:1422,Slot:10b},{count:10,CustomModelData:1422,Slot:11b},{count:10,CustomModelData:1422,Slot:18b},{count:10,CustomModelData:1422,Slot:19b},{count:10,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1419,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:10,CustomModelData:1422,Slot:0b},{count:10,CustomModelData:1422,Slot:1b},{count:10,CustomModelData:1422,Slot:2b},{count:10,CustomModelData:1422,Slot:9b},{count:10,CustomModelData:1422,Slot:11b},{count:10,CustomModelData:1422,Slot:18b},{count:10,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1420,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:10,CustomModelData:1422,Slot:0b},{count:10,CustomModelData:1422,Slot:2b},{count:10,CustomModelData:1422,Slot:9b},{count:10,CustomModelData:1422,Slot:11b}],result:[{count:1,CustomModelData:1421,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:10,CustomModelData:1422,Slot:9b},{count:10,CustomModelData:1422,Slot:11b},{count:10,CustomModelData:1422,Slot:18b},{count:10,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1421,Slot:16b}]}

# 農家の証--小麦-- Tier I
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:8,CustomModelData:1422,Slot:0b},{count:8,CustomModelData:1422,Slot:1b},{count:8,CustomModelData:1422,Slot:2b},{count:8,CustomModelData:1422,Slot:9b},{count:8,CustomModelData:1422,Slot:11b},{count:8,CustomModelData:1422,Slot:18b},{count:8,CustomModelData:1422,Slot:19b},{count:8,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1415,Slot:16b}]}
# 農家の証--小麦-- Tier II
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:16,CustomModelData:1422,Slot:0b},{count:16,CustomModelData:1422,Slot:1b},{count:16,CustomModelData:1422,Slot:2b},{count:1,CustomModelData:1415,Slot:9b},{count:16,CustomModelData:1422,Slot:10b},{count:1,CustomModelData:1415,Slot:11b},{count:16,CustomModelData:1422,Slot:18b},{count:16,CustomModelData:1422,Slot:19b},{count:16,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1416,Slot:16b}]}
# 農家の証--小麦-- Tier III
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:64,CustomModelData:1422,Slot:0b},{count:64,CustomModelData:1422,Slot:1b},{count:64,CustomModelData:1422,Slot:2b},{count:1,CustomModelData:1416,Slot:9b},{count:64,CustomModelData:1422,Slot:10b},{count:1,CustomModelData:1416,Slot:11b},{count:64,CustomModelData:1422,Slot:18b},{count:64,CustomModelData:1422,Slot:19b},{count:64,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1417,Slot:16b}]}

#　黄金麦の圧縮俵
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:64,CustomModelData:1422,Slot:0b},{count:64,CustomModelData:1422,Slot:1b},{count:64,CustomModelData:1422,Slot:2b},{count:64,CustomModelData:1422,Slot:9b},{count:64,CustomModelData:1422,Slot:10b},{count:64,CustomModelData:1422,Slot:11b},{count:64,CustomModelData:1422,Slot:18b},{count:64,CustomModelData:1422,Slot:19b},{count:64,CustomModelData:1422,Slot:20b}],result:[{count:1,CustomModelData:1591,Slot:16b}]}

# 濃縮小麦アーマー
# 頭1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1591,Slot:0b},{count:1,CustomModelData:1591,Slot:1b},{count:1,CustomModelData:1591,Slot:2b},{count:1,CustomModelData:1591,Slot:9b},{count:1,CustomModelData:1591,Slot:11b}],result:[{count:1,CustomModelData:1593,Slot:16b}]}
# 頭2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1591,Slot:9b},{count:1,CustomModelData:1591,Slot:10b},{count:1,CustomModelData:1591,Slot:11b},{count:1,CustomModelData:1591,Slot:18b},{count:1,CustomModelData:1591,Slot:20b}],result:[{count:1,CustomModelData:1593,Slot:16b}]}
# 胴
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1591,Slot:0b},{count:1,CustomModelData:1591,Slot:2b},{count:1,CustomModelData:1591,Slot:9b},{count:1,CustomModelData:1591,Slot:10b},{count:1,CustomModelData:1591,Slot:11b},{count:1,CustomModelData:1591,Slot:18b},{count:1,CustomModelData:1591,Slot:19b},{count:1,CustomModelData:1591,Slot:20b}],result:[{count:1,CustomModelData:1594,Slot:16b}]}
# 脚
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1591,Slot:0b},{count:1,CustomModelData:1591,Slot:1b},{count:1,CustomModelData:1591,Slot:2b},{count:1,CustomModelData:1591,Slot:9b},{count:1,CustomModelData:1591,Slot:11b},{count:1,CustomModelData:1591,Slot:18b},{count:1,CustomModelData:1591,Slot:20b}],result:[{count:1,CustomModelData:1595,Slot:16b}]}
# 足1
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1591,Slot:0b},{count:1,CustomModelData:1591,Slot:2b},{count:1,CustomModelData:1591,Slot:9b},{count:1,CustomModelData:1591,Slot:11b}],result:[{count:1,CustomModelData:1596,Slot:16b}]}
# 足2
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:1591,Slot:9b},{count:1,CustomModelData:1591,Slot:11b},{count:1,CustomModelData:1591,Slot:18b},{count:1,CustomModelData:1591,Slot:20b}],result:[{count:1,CustomModelData:1596,Slot:16b}]}

#四季の宝樹シリーズ
#四季の塊
data modify storage neofunction:crafter crafter_recipe append value {recipe:[{count:1,CustomModelData:62,Slot:0b},{count:1,CustomModelData:1638,Slot:1b},{count:1,CustomModelData:62,Slot:2b},{count:1,CustomModelData:1641,Slot:9b},{count:1,CustomModelData:1571,Slot:10b},{count:1,CustomModelData:1639,Slot:11b},{count:1,CustomModelData:62,Slot:18b},{count:1,CustomModelData:1640,Slot:19b},{count:1,CustomModelData:62,Slot:20b}],result:[{count:1,CustomModelData:1642,Slot:16b}]}
#四季の宝珠
#いつか作る

