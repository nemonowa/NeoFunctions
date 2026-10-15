# 命名：クレイビートル
# 説明：ルブラの迷宮の共通の敵（パレット）。赤土の殻をまとった大きな甲虫。硬く、噛みつく力が強い（大きなシルバーフィッシュ）
# 説明：体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない。大きさ（scale）だけ残す
# >
# =/function neofunction:asset/summon/919

summon silverfish ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CustomName:{"text":"クレイビートル","color":"#B5651D","bold":true,"italic":false},Tags:[lv3,rubra_dmob,rubra_beetle],DeathLootTable:"neofunction:asset/summon/919",attributes:[{id:"minecraft:scale",base:2.0d}]}
