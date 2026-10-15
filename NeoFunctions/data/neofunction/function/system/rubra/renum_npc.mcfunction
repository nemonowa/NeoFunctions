# 命名：renum_npc
# 説明：番号の並べ直し（エンティティ 809〜834 → 900〜925）を、ワールドにもう置いてある NPC に反映する：DeathLootTable を新しい番号に（話しかけたときの振り分けがこれを見るため）。済んだらタグ rubra_renum
# 実行条件：実行者 ルブラの NPC（村人、タグ rubra_npc）
# >/function neofunction:system/rubra/guide
# =/function neofunction:system/rubra/renum_npc

# 内容
tag @s add rubra_renum
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/810"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/901"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/811"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/902"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/812"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/903"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/813"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/904"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/814"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/905"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/815"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/906"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/816"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/907"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/817"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/908"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/819"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/910"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/820"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/911"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/821"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/912"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/822"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/913"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/823"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/914"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/824"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/915"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/825"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/916"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/826"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/917"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/827"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/918"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/828"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/919"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/829"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/920"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/830"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/921"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/831"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/922"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/832"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/923"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/833"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/924"
execute if data entity @s {DeathLootTable:"neofunction:asset/summon/834"} run return run data modify entity @s DeathLootTable set value "neofunction:asset/summon/925"
