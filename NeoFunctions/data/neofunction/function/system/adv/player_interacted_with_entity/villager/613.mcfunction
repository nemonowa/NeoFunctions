# 命名：613
# 説明：
# 説明：実行者:ゼフィーナ
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/613


# 説明：ゼフィーナに話しかけたときの固有処理！
execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「魔石は冒険者の主要な収入源なの。」"}]
execute if predicate neofunction:random_chance/20 run return run tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「魔石について気になったら、私のサブクエストを受けて頂戴。」"}]
tellraw @a[distance=..8] [{"text":"<"},{"selector":"@s"},{"text":"> 「魔石を持って経験値を獲得すると、魔石に魔物の残滓が蓄積されるの。"}]