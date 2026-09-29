# 命名：pos0
# 説明：プレイヤーが開放してるアンカーへのテレポートをチャットを表示する
# >
# =/function neofunction:asset/tellraw/pos0



# 内容
execute as @s[advancements={neoadvancement:2/0=true}] run tellraw @s {"nbt":"name","storage":"pos:0","interpret":true,click_event:{"action":"run_command",command:"/trigger teleport set 0"}}