# 命名：tamer/gehenna_spawn_one
# 説明：238(地獄門)専用。現在の実行位置に、雑魚の使い魔を1体だけ確率で抽選して召喚する。
#       呼び出し元(238)では`execute positioned ~X ~ ~Z run function ...`の形で呼ばれており、
#       positionedは位置だけを変えるので、ここでの@sは引き続き発動者(プレイヤー)本人。
#       そのため@sのLVLスコアを見て、まだ覚えていないはずの上位個体は抽選対象から除外する。
#       　・LVL 5〜14　：狼のみ（232未習得帯）
#       　・LVL 15〜29　：狼／スノーゴーレムから抽選（233未習得帯）
#       　・LVL 30〜　　：狼／スノーゴーレム／アイアンゴーレムから均等抽選
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~ ~ ~-3
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~ ~ ~3
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-2 ~ ~-2
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-2 ~ ~2
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-3 ~ ~
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~2 ~ ~-2
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~2 ~ ~2
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~3 ~ ~
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~5 ~ ~（Lv40〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-5 ~ ~（Lv40〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~ ~ ~5（Lv50〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~ ~ ~-5（Lv50〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~4 ~ ~4（Lv60〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~4 ~ ~-4（Lv60〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-4 ~ ~4（Lv70〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-4 ~ ~-4（Lv70〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~6 ~ ~2（Lv80〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-6 ~ ~2（Lv80〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~2 ~ ~6（Lv90〜）
# >/function neofunction:asset/skill/238 実行者server 実行位置positioned ~-2 ~ ~-6（Lv90〜）
# =/function neofunction:asset/skill/tamer/gehenna_spawn_one

# 【追加：2026-09-12 消滅処理をポータルクールダウン式に統一（238側のウィザー効果を廃止）。
#   PortalCooldownはスポーン審査(.spawn/.neo)時にしか`portalcooldown`タグが付与されないため、
#   summon時のNBTに直接持たせる。600tick(30秒)で共通デスポーン処理に回収される】

# 【追加：2026-09-12 個体ステータスを専用の弱体化仕様（Health:30固定等）から撤廃し、
#   232(狼)/233(スノーゴーレム)/234(アイアンゴーレム)の通常召喚個体と完全に同一のNBT
#   （耐久・攻撃力・レベル成長タグlv2〜lv9）に統一。種族抽選ロジックはそのまま維持し、
#   抽選後に@sのLVLで該当するレベル帯のステータス/タグを付与する】

# LVL15未満：狼のみ確定召喚
execute if score @s LVL matches ..14 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}

# LVL15〜29：狼／スノーゴーレムから抽選
execute if score @s LVL matches 15..29 store result score #roll temp run random value 1..2
execute if score @s LVL matches 15..29 if score #roll temp matches 1 if score @s LVL matches ..19 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 15..29 if score #roll temp matches 1 if score @s LVL matches 20..29 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv2","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 15..29 if score #roll temp matches 2 if score @s LVL matches ..25 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv2","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 15..29 if score #roll temp matches 2 if score @s LVL matches 26..29 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv3","familiar","gehennaFamiliar","ownerPending238"]}

# LVL30〜：狼／スノーゴーレム／アイアンゴーレムから均等抽選
execute if score @s LVL matches 30.. store result score #roll temp run random value 1..3
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 30..39 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv3","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 40..49 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv4","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 50..59 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv5","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 60..69 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv6","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 70..79 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv7","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 80..89 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv8","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 1 if score @s LVL matches 90.. run summon minecraft:wolf ~ ~ ~ {PortalCooldown:600,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv9","familiar","gehennaFamiliar","ownerPending238"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 30 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv3","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 31..40 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv4","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 41..50 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv5","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 51..60 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv6","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 61..70 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv7","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 71..80 run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv8","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 2 if score @s LVL matches 81.. run summon minecraft:snow_golem ~ ~ ~ {PortalCooldown:600,Team:"white",DeathLootTable:"empty",Tags:["lv9","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 30..39 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv3","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 40..49 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv4","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 50..59 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv5","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 60..69 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv6","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 70..79 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv7","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 80..89 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv8","familiar","gehennaFamiliar","ownerPending238"]}
execute if score @s LVL matches 30.. if score #roll temp matches 3 if score @s LVL matches 90.. run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:600,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv9","familiar","gehennaFamiliar","ownerPending238"]}
