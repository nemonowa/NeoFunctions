# 命名：code
# 説明：
# >/advancement neofunction:tick/entity_scores/trigger/code
# =/function neofunction:system/trigger/code

# 内容
playsound minecraft:block.amethyst_cluster.break record @s ~ ~ ~ 1 1.5 1
playsound minecraft:entity.arrow.hit_player record @s ~ ~ ~ 1 2 1
particle minecraft:enchant ~ ~1.2 ~ 0.5 0.5 0.5 0.1 333 force

# アイサツ
execute as @s[scores={code=1}] run function neofunction:system/trigger/code/1
execute as @s[scores={code=2}] run function neofunction:system/trigger/code/2
# 目標表示
execute as @s[scores={code=3}] run function neofunction:system/trigger/code/3
# 異名システム
execute as @s[scores={code=8}] run function neofunction:system/trigger/code/8

# キャンセル
execute as @s[scores={code=9}] run function neofunction:system/trigger/code/9

# イベント呼び出し
execute as @s[scores={code=10}] run function neofunction:system/trigger/code/10

#サブクエキャンセル
execute as @s[scores={code=11}] run function neofunction:system/trigger/code/11
#最寄りのアンカーの方向を向く
execute as @s[scores={code=12}] run function neofunction:system/trigger/code/12
execute as @s[scores={code=13}] run function neofunction:system/trigger/code/13

# 星屑交換
execute as @s[scores={code=20}] run function neofunction:system/exchange/give/credit
execute as @s[scores={code=21}] run function neofunction:system/exchange/give/c1
execute as @s[scores={code=22}] run function neofunction:system/exchange/give/c2
execute as @s[scores={code=23}] run function neofunction:system/exchange/give/c3
execute as @s[scores={code=24}] run function neofunction:system/exchange/give/c4
execute as @s[scores={code=25}] run function neofunction:system/exchange/give/c5
execute as @s[scores={code=26}] run function neofunction:system/exchange/give/c6
execute as @s[scores={code=27}] run function neofunction:system/exchange/give/c7
execute as @s[scores={code=28}] run function neofunction:system/exchange/give/c8
execute as @s[scores={code=29}] run function neofunction:system/exchange/give/c9

# シャード取り出し個数変更
execute if entity @s[scores={code=30}] run scoreboard players set @s ShardC 1
execute if entity @s[scores={code=31}] run scoreboard players set @s ShardC 8
execute if entity @s[scores={code=32}] run scoreboard players set @s ShardC 32
execute if entity @s[scores={code=33}] run scoreboard players set @s ShardC 64
execute if entity @s[scores={code=30..33}] run function neofunction:asset/tellraw/credit
execute if entity @s[scores={code=30..33}] run playsound ui.button.click player @s ~ ~ ~ 1 1

# 転移
execute as @s[scores={code=94}] run function neofunction:system/trigger/code/94
execute as @s[scores={code=95}] run function neofunction:system/trigger/code/95
execute as @s[scores={code=96}] run function neofunction:system/trigger/code/96
execute as @s[scores={code=97}] run function neofunction:system/trigger/code/97
execute as @s[scores={code=98}] run function neofunction:system/trigger/code/98

# チュートリアル
execute as @s[scores={code=200}] run function neofunction:system/trigger/code/200
execute as @s[scores={code=201}] run function neofunction:system/trigger/code/201
execute as @s[scores={code=202}] run function neofunction:system/trigger/code/202
execute as @s[scores={code=203}] run say 古い処理
execute as @s[scores={code=204}] run say 古い処理
execute as @s[scores={code=205}] run say 古い処理
execute as @s[scores={code=206}] run say 古い処理
execute as @s[scores={code=207}] run say 古い処理
execute as @s[scores={code=208}] run say 古い処理
execute as @s[scores={code=209}] run function neofunction:asset/tellraw/cai0
execute as @s[scores={code=210}] run function neofunction:system/trigger/code/210
execute as @s[scores={code=211}] run function neofunction:system/trigger/code/211
execute as @s[scores={code=212}] run tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> ここはNEXUSの「ターミナルロビー」と言われる区画です。\nここでは様々なオプションを選択可能です。"}]
execute as @s[scores={code=213}] run tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> 私はカイ。戦闘や生存を補助します。"}]
execute as @s[scores={code=214}] run tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> NEXUSは貴官の旅を幇助します。\n特殊なスキルやアイテム、様々な施設を提供しています。"}]
execute as @s[scores={code=215}] run function neofunction:system/trigger/code/215

# スキル選択画面（RGB）
execute as @s[scores={code=300}] run function neofunction:system/trigger/code/300
execute as @s[scores={code=301}] run function neofunction:system/trigger/code/301
execute as @s[scores={code=302}] run function neofunction:system/trigger/code/302

## スキル習得（スペルブック使用時）
#基礎スキル3種類
execute as @s[scores={code=303}] run function neofunction:system/trigger/code/303
execute as @s[scores={code=304}] run function neofunction:system/trigger/code/304
execute as @s[scores={code=305}] run function neofunction:system/trigger/code/305
#スペルブック:英雄航路
execute as @s[scores={code=306}] run function neofunction:system/trigger/code/306
#スペルブック:ブラックイミュニティー
execute as @s[scores={code=307}] run function neofunction:system/trigger/code/307
#スペルブック:マナ・リジェル
execute as @s[scores={code=308}] run function neofunction:system/trigger/code/308
#スペルブック:マナ・インパクト
execute as @s[scores={code=309}] run function neofunction:system/trigger/code/309
#スペルブック:マナ・スパーク
execute as @s[scores={code=310}] run function neofunction:system/trigger/code/310
#スペルブック:結界術「剛撃陣」
execute as @s[scores={code=311}] run function neofunction:system/trigger/code/311
#スペルブック:結界術【硬化陣】
execute as @s[scores={code=312}] run function neofunction:system/trigger/code/312
#スペルブック:結界術【再生陣】
execute as @s[scores={code=313}] run function neofunction:system/trigger/code/313
#スペルブック:結界術【加速陣】
execute as @s[scores={code=314}] run function neofunction:system/trigger/code/314
#アースルート:土根っこ
execute as @s[scores={code=315}] run function neofunction:system/trigger/code/315
#スペルブック:【うま吸い】
execute as @s[scores={code=316}] run function neofunction:system/trigger/code/316
#スペルブック:【不死馬の加護】
execute as @s[scores={code=317}] run function neofunction:system/trigger/code/317
#スペルブック:【ウマタタビうまあい】
execute as @s[scores={code=318}] run function neofunction:system/trigger/code/318
#スペルブック:【十六葬・エル・マタドール】
execute as @s[scores={code=319}] run function neofunction:system/trigger/code/319
#スペルブック:【イグニス・ベネディクション】
execute as @s[scores={code=320}] run function neofunction:system/trigger/code/320
#スペルブック:【アクア・ベネディクション】
execute as @s[scores={code=321}] run function neofunction:system/trigger/code/321
#スペルブック:【ヴェントゥス・ベネディクション】
execute as @s[scores={code=322}] run function neofunction:system/trigger/code/322
#スペルブック:【テラ・ベネディクション】
execute as @s[scores={code=323}] run function neofunction:system/trigger/code/323
#スペルブック:【カラー・オブ・アロー】
execute as @s[scores={code=324}] run function neofunction:system/trigger/code/324
#スペルブック:【エキリブリアム・ベネディクション】
execute as @s[scores={code=325}] run function neofunction:system/trigger/code/325
#スペルブック:【フロッグボルト】
execute as @s[scores={code=326}] run function neofunction:system/trigger/code/326
#スペルブック:【フロッグリップル】
execute as @s[scores={code=334}] run function neofunction:system/trigger/code/334

# スキル呼び出し（トリガー起動）
execute as @s[scores={code=327}] run function neofunction:system/trigger/code/327

# 格納スキルショートカット
execute as @s[scores={code=328}] run function neofunction:system/trigger/code/328
execute as @s[scores={code=329}] run function neofunction:system/trigger/code/329
execute as @s[scores={code=330}] run function neofunction:system/trigger/code/330
execute as @s[scores={code=331}] run function neofunction:system/trigger/code/331
execute as @s[scores={code=332}] run function neofunction:system/trigger/code/332
execute as @s[scores={code=333}] run function neofunction:system/trigger/code/333

# 未実装
execute as @s[scores={code=404}] run function neofunction:system/trigger/code/404

# ヒャッハーモヒカン
execute as @s[scores={code=444}] run function neofunction:system/trigger/code/444

# エリートボス起動 
execute as @s[scores={code=501}] run function neofunction:system/trigger/code/501
execute as @s[scores={code=502}] run function neofunction:system/trigger/code/502
execute as @s[scores={code=503}] run function neofunction:system/trigger/code/503
execute as @s[scores={code=504}] run function neofunction:system/trigger/code/504
execute as @s[scores={code=505}] run function neofunction:system/trigger/code/505
execute as @s[scores={code=506}] run function neofunction:system/trigger/code/506
execute as @s[scores={code=507}] run function neofunction:system/trigger/code/507
execute as @s[scores={code=508}] run function neofunction:system/trigger/code/508
execute as @s[scores={code=509}] run function neofunction:system/trigger/code/509
execute as @s[scores={code=510}] run function neofunction:system/trigger/code/510

#追加オプション用の説明
execute as @s[scores={code=600}] run function neofunction:system/trigger/code/600
execute as @s[scores={code=601}] run function neofunction:system/trigger/code/601

# 堕天使の輪
execute as @s[scores={code=666}] run function neofunction:system/trigger/code/666

# 天使の輪
execute as @s[scores={code=777}] run function neofunction:system/trigger/code/777

# 異名システム：必ず1000~1200にすること！！！
execute as @s[scores={code=1000}] run function neofunction:system/trigger/code/1000

execute if score @s code matches 1000..1200 run function neofunction:asset/name/set

# エディター用
execute if score @s code matches 11718..11763 run function neofunction:system/adv/tick/cmd/1717/editor/write

# 準備完了！
tellraw @s[scores={code=55555..55556}] {"text":"✔ 準備完了！","color":"yellow","bold":false}
tag @s[scores={code=55555}] add go
execute if score @s code matches 55556 if entity @e[tag=froggameAEC] run tag @s add froggame
execute if score @s code matches 55556 if entity @e[tag=froggameAEC] in neodimension:ceresta_festa run tp @s 1013.54 44.00 2157.16 90.0 0

#詫び石
execute as @s[scores={code=46494649}] run function neofunction:system/trigger/code/46494649

# チュートリアル
execute as @s[scores={code=1234567890}] run function neofunction:system/trigger/code/1234567890

# 副長プロマイド
execute as @s[scores={code=20210516}] run function neofunction:system/trigger/code/20210516

# 引き直し
scoreboard players set @s code 0
scoreboard players enable @s code
advancement revoke @s only neofunction:tick/entity_scores/trigger/code
