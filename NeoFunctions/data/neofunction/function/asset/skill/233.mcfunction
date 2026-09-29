# 命名：233
# 説明：召雪像【サモン・スノーゴーレム】
# >(呼び出し元が見つかりませんでした)
# =/function neofunction:asset/skill/233

# 内容
# 雪だるまの使い魔を1体召喚する。射程内の敵に自動で雪玉を投げ続ける攻撃はvanillaAIそのまま。
# 追従はfamiliarFollowタグを持つ使い魔専用の共通ループ（tamer/follow_tick）で処理する。
# Owner概念を持たないMobなので、召喚者のUUIDを4分割スコア(ownerU0〜3)として本体に記録し、
# それを使ってtamer/follow_check_ownerが本人だけを追従対象として特定する。

#召喚上限カウント
data modify storage neofunction:tamer OwnerUUID set from entity @s UUID
execute store result score #Calc2 temp run function neofunction:asset/skill/tamer/count with storage neofunction:tamer
execute if score #Calc2 temp matches -1 run return -100

# 【変更：2026-09-12 成長段階タグをlv9まで拡張。従来LVL31以上でどの条件にも一致せず不発になっていた
#   バグも修正（既存の..25/26..30の区切りは維持し、31以降を10レベル刻みで追加）】
execute if entity @s[scores={LVL=..25}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv2"]}
execute if entity @s[scores={LVL=26..30}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv3"]}
execute if entity @s[scores={LVL=31..40}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv4"]}
execute if entity @s[scores={LVL=41..50}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv5"]}
execute if entity @s[scores={LVL=51..60}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv6"]}
execute if entity @s[scores={LVL=61..70}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv7"]}
execute if entity @s[scores={LVL=71..80}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv8"]}
execute if entity @s[scores={LVL=81..}] run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:2100,Team:"white",DeathLootTable:"empty",Tags:["familiar","snowGolemFamiliar","ownerPending233","lv9"]}
#足装備に飼い主のUUIDを保存
data modify entity @e[tag=ownerPending233,limit=1,sort=nearest] equipment.feet set value {id:"minecraft:snowball",count:1,components:{}}
data modify entity @e[tag=ownerPending233,limit=1,sort=nearest] equipment.feet.components."minecraft:custom_data".Owner set from entity @s UUID

# 【追加：2026-09-12 スニーク召喚（sneak_time 1以上）時はTPしない使い魔にする。
#   スコア・ストレージ・タグを増やさず、レギンス(ArmorItems[1])にフラグを仕込む方式】
execute if score @s sneak_time matches 1.. run data modify entity @e[tag=ownerPending233,limit=1,sort=nearest] equipment.legs set value {id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_data":{NoFollow:1b}}}

tag @e[tag=ownerPending233] remove ownerPending233

# 演出
playsound block.snow.place record @s ~ ~ ~ 1.0 1.0
particle minecraft:snowflake ~ ~1 ~ 0.3 0.5 0.3 0.02 20 force

# SP消費：20SP消費
scoreboard players remove @s SP 20

