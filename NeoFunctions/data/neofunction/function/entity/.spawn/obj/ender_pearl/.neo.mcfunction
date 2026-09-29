# 命名：エンダーパール処理機構
# 説明：エンダーパールに関する処理
# >/function neofunction:entity/.spawn/obj
# =/function neofunction:entity/.spawn/obj/ender_pearl/.neo

# エンダーパール破壊処理(tag=breakpearl)
execute if entity @s if entity @e[tag=breakpearl,distance=..32] run return run function neofunction:entity/.spawn/obj/ender_pearl/breakpearl

# 計算式でnを∞に極限に飛ばすと150ブロック以上でVx=0となりエンパは飛ばない。よって必要tick数はn=log0.99(1-dis/150)。以下の秒数はそれに斜方投射も加味して少し近似した秒数を導出した。
execute as @e[type=ender_pearl,tag=detect] at @s run return run function neofunction:entity/.spawn/obj/ender_pearl/breakpearl
tag @s add detect
execute if entity @e[tag=breakpearl,distance=..48] run return run schedule function neofunction:entity/.spawn/obj/ender_pearl/.neo 1s append
execute if entity @e[tag=breakpearl,distance=..72] run return run schedule function neofunction:entity/.spawn/obj/ender_pearl/.neo 2s append
execute if entity @e[tag=breakpearl,distance=..128] run return run schedule function neofunction:entity/.spawn/obj/ender_pearl/.neo 3s append
execute if entity @e[tag=breakpearl,distance=..160] run return run schedule function neofunction:entity/.spawn/obj/ender_pearl/.neo 4s append
