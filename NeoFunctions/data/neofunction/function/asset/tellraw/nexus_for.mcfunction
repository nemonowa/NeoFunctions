# 命名：nexus_for
# 説明：
# >/function neofunction:asset/tellraw/nexus
# =/function neofunction:asset/tellraw/nexus_for

$execute as @s[advancements={neoadvancement:2/$(i)=true}] run tellraw @s {"nbt":"name","storage":"pos:$(i)","interpret":true,click_event:{"action":"run_command",command:"/trigger teleport set $(i)"}}
