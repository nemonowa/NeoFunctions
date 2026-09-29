# 命名：breakpearl
# 説明：エンダーパール破壊処理(旧)
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/breakpearl


# 演出
particle item{item:"minecraft:ender_pearl"} ~ ~ ~ 0 0 0 1 0 normal
playsound minecraft:block.glass.break record @a[distance=..32] ~ ~ ~ 1 1 1
tellraw @a[distance=..32] [{"text":"* ","color":"white","bold":false,"italic":false},{"selector":"@s"},{"text":" はエンダーパールを破壊した！"}]

#削除
kill @e[type=ender_pearl,distance=..32]
