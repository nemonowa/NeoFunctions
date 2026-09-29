# 命名：.macro
# 説明：ワールドセッティング
# 説明：進捗スキルを覚えていない場合習得、覚えてる場合削除
# >/function neofunction:system/pos/.macro with storage neofunction:pos/last_death_location
# =/function neofunction:system/trigger/skill/.macro



# 内容　二分岐探索
$execute if entity @s[advancements={neoadvancement:neoskill/$(skill)=true}] as @s run function neofunction:system/trigger/skill/true with storage neofunction:trigger
$execute if entity @s[advancements={neoadvancement:neoskill/$(skill)=false},tag=!temp] as @s run function neofunction:system/trigger/skill/false with storage neofunction:trigger

#トグル用
tag @s remove temp