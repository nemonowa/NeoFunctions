# 命名：zombie_villager
# 説明：
# >
# =/function neofunction:system/adv/player_killed_entity/zombie_villager
advancement revoke @s only neofunction:player_killed_entity/zombie_villager
execute unless predicate neofunction:random_chance/1 run return 0
# 【変更：2026-09-28 26.3対応】頭の持ち主の名前が 16 文字を超え 26.3 では不可。1.20.4 でも見た目は普通の頭で、名前だけ「mhf_zombie_villagerの頭」だったので、その名前表示を item_name で再現
give @s minecraft:player_head[minecraft:item_name={translate:"block.minecraft.player_head.named",with:["mhf_zombie_villager"]}]
