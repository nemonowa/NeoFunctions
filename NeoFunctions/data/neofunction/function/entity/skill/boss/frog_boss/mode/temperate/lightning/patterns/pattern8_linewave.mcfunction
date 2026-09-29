# 命名：pattern8_linewave
# 説明：⑧線列（ラインウェーブ）- 複数の直線がランダムな方向へ順番に(スイープするように)落雷する
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern_select
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/lightning/patterns/pattern8_linewave

summon marker ~ ~ ~ {Tags:["LTPivot"]}
execute store result entity @e[tag=LTPivot,limit=1,sort=nearest] Rotation[0] float 1 run random value 0..360

# 1列目 (Timer:40 / 経過2.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:40}}

# 2列目 (Timer:60 / 経過3.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:60}}

# 3列目 (Timer:80 / 経過4.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^-6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:80}}

# 4列目 (Timer:100 / 経過5.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^0 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:100}}

# 5列目 (Timer:120 / 経過6.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^6 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:120}}

# 6列目 (Timer:140 / 経過7.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^12 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:140}}

# 7列目 (Timer:160 / 経過8.0秒後に着弾)
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^-6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^0 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^6 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^12 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}
execute as @e[tag=LTPivot,limit=1] at @s positioned ^18 ^ ^18 run summon marker ~ ~ ~ {Tags:["AttackPoint"],data:{Timer:160}}

kill @e[tag=LTPivot]
