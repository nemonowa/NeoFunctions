# 命名：pattern8_linewave
# 説明：⑧線列（ラインウェーブ）- 複数の直線がランダムな方向へ順番に(スイープするように)落雷する
# 説明：安置：中央列（4列目・ローカルX=0）は全ウェーブ共通で意図的に非生成。ピボット正面方向の中央帯が全体を通しての安置になる
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/elite/temperate/lightning/patterns/pattern8_linewave

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

# 1列目 (Timer:40 / 経過2.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:42}}

# 2列目 (Timer:60 / 経過3.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:64}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:63}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:61}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:62}}

# 3列目 (Timer:80 / 経過4.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:81}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:84}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:81}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:84}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:83}}

# 5列目 (Timer:120 / 経過6.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:123}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:122}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:123}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:124}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:121}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:124}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:121}}

# 6列目 (Timer:140 / 経過7.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:142}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:142}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:144}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:143}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:143}}

# 7列目 (Timer:160 / 経過8.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:163}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:162}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:162}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:163}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:163}}

kill @e[tag=LTPivot]

# エリート強化（連撃）：連撃2発目（+8tick）
# 命名：pattern8_linewave
# 説明：⑧線列（ラインウェーブ）- 複数の直線がランダムな方向へ順番に(スイープするように)落雷する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern8_linewave

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

# 1列目 (Timer:48 / 経過2.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:51}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:50}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:52}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:48}}

# 2列目 (Timer:68 / 経過3.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:72}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:72}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:70}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:69}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:72}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:68}}

# 3列目 (Timer:88 / 経過4.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:92}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:89}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:90}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:88}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:90}}

# 5列目 (Timer:128 / 経過6.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:128}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:128}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:131}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:132}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:132}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:129}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:132}}

# 6列目 (Timer:148 / 経過7.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:148}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:149}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:150}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:149}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:149}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:148}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:152}}

# 7列目 (Timer:168 / 経過8.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:172}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:171}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:172}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:170}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:170}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:168}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:172}}

kill @e[tag=LTPivot]


# エリート強化（連撃）：連撃3発目（+16tick）
# 命名：pattern8_linewave
# 説明：⑧線列（ラインウェーブ）- 複数の直線がランダムな方向へ順番に(スイープするように)落雷する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern8_linewave

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

# 1列目 (Timer:56 / 経過2.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:58}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:59}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:56}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:57}}

# 2列目 (Timer:76 / 経過3.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:78}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:79}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}

# 3列目 (Timer:96 / 経過4.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:99}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:99}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:96}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:97}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:99}}

# 5列目 (Timer:136 / 経過6.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:137}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:139}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:138}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:139}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:136}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:137}}

# 6列目 (Timer:156 / 経過7.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:159}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:159}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:158}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:157}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:159}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:159}}

# 7列目 (Timer:176 / 経過8.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:178}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:178}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:177}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:177}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:178}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:177}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:178}}

kill @e[tag=LTPivot]


