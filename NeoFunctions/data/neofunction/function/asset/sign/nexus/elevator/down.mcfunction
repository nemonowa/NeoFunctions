# 命名：down
# 説明：
# >
# =/function neofunction:asset/sign/nexus/elevator/down


# 内容
execute as @s[scores={LVL=..99}] run playsound minecraft:entity.chicken.death record @s ~ ~ ~ 10 1 1
execute as @s[scores={LVL=..99}] run return run tellraw @s [{"text":"告：世界層跳躍にはOR-5以上の称号が必要","color":"yellow"}]

execute as @s at @s in neodimension:nexus run tp @s ~ ~-18 ~ ~ ~
execute as @s at @s run particle portal ~ ~ ~ 0 0 0 1 1000 normal
execute as @s at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.1 1 1


# >/setblock ~ ~ ~ mangrove_sign[rotation=6,waterlogged=false]{front_text:{color:"black",has_glowing_text:1b,messages:['{"text":"⚓N-Elevator⚓","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"function neofunction:asset/sign/nexus/elevator/down"}}','{"text":"「世界層跳躍」","color":"dark_aqua","bold":true,"underlined":true}','{"text":"深次元階層へ","color":"dark_blue","bold":true,"underlined":true}','[{"text":"N:1280 W:1280 D:","color":"dark_gray","bold":true},{"text":"xxx","obfuscated":true}]']},is_waxed:0b} replace