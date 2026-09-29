# 命名：45
# 説明：英知と追撃の妙薬
# >/function neofunction:consume_item/45
# =/function neofunction:system/adv/consume_item/45


# 内容：16m以内の敵からランダムに2体までのメインハンド装備を破壊する。その後、2体までのオフハンド装備を破壊する。
execute as @e[tag=enemy,limit=2,sort=random,distance=..64] run item replace entity @s weapon.mainhand with air
execute as @e[tag=enemy,limit=2,sort=random,distance=..64] run item replace entity @s weapon.offhand with air

tellraw @a [{"text":"<","color":"white"},{"selector":"@p","color":"white"},{"text":"> 英知と追撃の妙薬","color":"white",hover_event:{"action":"show_text",value:"64m以内の敵からランダムに2体までのメインハンド装備を破壊する。その後、2体までのオフハンド装備を破壊する。"}}]

