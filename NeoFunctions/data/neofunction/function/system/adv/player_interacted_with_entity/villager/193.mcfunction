# 命名：193
# 説明：システム
# 説明：進捗達成時（snowball
# >/function neofunction:player_interacted_with_entity/193
# =/function neofunction:system/adv/player_interacted_with_entity/villager/193

## 内容
execute store result storage neofunction:asset seed int 1 run seed

tellraw @a[distance=..8] [{"text":"<",hover_event:{"action":"show_text","value":[{"text":"Minecraft Version"}]}},{"selector":"@s"},{"text":">「貴官の探究する世界種乱数は"},{"storage":"neofunction:asset","nbt":"seed","color":"aqua","bold":true,"underlined":true},{"text":"です。」"}]