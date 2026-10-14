# 命名：hearts6
# 説明：【追加：2026-10-13 ルブラ編】黒い心臓を 6 つ出す（見えない小さなガスト＝当たり判定、無敵。見た目は泣く黒曜石）と、回すための向きの印。星還しの矢が近くに来ると砕ける（heart_check）
# 実行条件：実行位置 顎の真ん中
# >/function neofunction:entity/skill/boss/rubra_void/form3_start
# >/function neofunction:entity/skill/boss/rubra_void/heart_phase
# =/function neofunction:entity/skill/boss/rubra_void/hearts6

# 内容
kill @e[type=ghast,tag=rubra_heart]
kill @e[type=item_display,tag=rubra_heart_v]
kill @e[type=marker,tag=rubra_heart_rot]
summon marker ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_rot"]}
summon ghast ~ ~-4 ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["check","rubra_fin","rubra_heart","rubra_heart1","except"],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.5d}],Health:40.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
summon item_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_v","rubra_heart_v1"],item:{id:"minecraft:crying_obsidian",count:1},teleport_duration:2,brightness:{block:12,sky:12},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},view_range:6.0f}
summon ghast ~ ~-4 ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["check","rubra_fin","rubra_heart","rubra_heart2","except"],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.5d}],Health:40.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
summon item_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_v","rubra_heart_v2"],item:{id:"minecraft:crying_obsidian",count:1},teleport_duration:2,brightness:{block:12,sky:12},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},view_range:6.0f}
summon ghast ~ ~-4 ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["check","rubra_fin","rubra_heart","rubra_heart3","except"],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.5d}],Health:40.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
summon item_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_v","rubra_heart_v3"],item:{id:"minecraft:crying_obsidian",count:1},teleport_duration:2,brightness:{block:12,sky:12},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},view_range:6.0f}
summon ghast ~ ~-4 ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["check","rubra_fin","rubra_heart","rubra_heart4","except"],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.5d}],Health:40.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
summon item_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_v","rubra_heart_v4"],item:{id:"minecraft:crying_obsidian",count:1},teleport_duration:2,brightness:{block:12,sky:12},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},view_range:6.0f}
summon ghast ~ ~-4 ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["check","rubra_fin","rubra_heart","rubra_heart5","except"],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.5d}],Health:40.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
summon item_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_v","rubra_heart_v5"],item:{id:"minecraft:crying_obsidian",count:1},teleport_duration:2,brightness:{block:12,sky:12},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},view_range:6.0f}
summon ghast ~ ~-4 ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Invulnerable:1b,Tags:["check","rubra_fin","rubra_heart","rubra_heart6","except"],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.5d}],Health:40.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
summon item_display ~ ~-4 ~ {Tags:["check","rubra_fin","rubra_heart_v","rubra_heart_v6"],item:{id:"minecraft:crying_obsidian",count:1},teleport_duration:2,brightness:{block:12,sky:12},transformation:{left_rotation:[0.2f,0.3f,0.1f,0.92f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},view_range:6.0f}
data modify storage neofunction:rubra fin.hn set value 6
particle minecraft:sculk_soul ~ ~-4 ~ 6 3 6 0.05 120 force @a[distance=..160]
playsound minecraft:entity.warden.heartbeat hostile @a[distance=..160] ~ ~ ~ 4 0.6
