# 命名：hit
# 説明：【追加：2026-10-08 ルブラ編】節の当たり判定（interaction）が殴られた。弱っている節（rubra_hot、スタン中）なら攻撃した人の攻撃力の 1.5 倍を本体に与え、そうでなければ弾く。【変更：2026-10-14】光る節の仕組みはやめ、スタン中だけ通る
# 実行条件：実行者 殴られた interaction（タグ rubra_hit）
# >/function neofunction:entity/skill/boss/rubra_worm/tick
# =/function neofunction:entity/skill/boss/rubra_worm/hit

# 内容
execute on attacker run tag @s add rubra_attacker
execute if entity @s[tag=rubra_hot] as @a[tag=rubra_attacker,limit=1] run function neofunction:entity/skill/boss/rubra_worm/hit_dmg
execute if entity @s[tag=rubra_hot] at @s run particle minecraft:lava ~ ~1 ~ 0.6 0.6 0.6 0 6 normal
execute if entity @s[tag=!rubra_hot] at @s run playsound minecraft:block.anvil.land hostile @a[distance=..16] ~ ~1 ~ 0.4 1.8
execute if entity @s[tag=!rubra_hot] at @s run particle minecraft:crit ~ ~1 ~ 0.6 0.6 0.6 0.1 8 normal
execute if entity @s[tag=!rubra_hot] run title @a[tag=rubra_attacker] actionbar {"text":"黒い殻は硬い……頭を狙うか、柱にぶつけて弱らせろ","color":"gray"}
data remove entity @s attack
tag @a[tag=rubra_attacker] remove rubra_attacker
