# 命名：breakpearl
# 説明：エンダーパール破壊処理
# >/function neofunction:entity/.spawn/obj/ender_pearl/.neo
# =/function neofunction:entity/.spawn/obj/ender_pearl/breakpearl


# 演出
execute unless entity @e[tag=breakpearl,distance=..32] run return 0
particle item{item:"minecraft:ender_pearl"} ~ ~ ~ 0 0 0 1 0 normal
playsound minecraft:block.glass.break record @a[distance=..32] ~ ~ ~ 1 1 1
tellraw @a[distance=..32] [{"text":"* ","color":"white","bold":false,"italic":false},{"selector":"@e[tag=breakpearl,distance=..32,limit=1]"},{"text":" はエンダーパールを破壊した！"}]

#削除
kill @s
