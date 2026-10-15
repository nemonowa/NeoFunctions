# 命名：tamer/follow_warp
# 説明：使い魔をプレイヤーの近くへ引き寄せる（はぐれ防止テレポート）
# >/function neofunction:asset/skill/tamer/follow_check_owner 実行者if entity @e[tag=familiar] as @a as @e[tag=familiar] 実行位置@s(@e[tag=familiar]時点)
# =/function neofunction:asset/skill/tamer/follow_warp


# スニーク召喚された使い魔（レギンスに NoFollow のフラグ）は、はぐれ防止の TP の対象にしない
$execute unless entity @s[nbt=!{Owner:$(UUID)},nbt=!{equipment:{feet:{components:{"minecraft:custom_data":{Owner:$(UUID)}}}}}] unless entity @s[nbt={equipment:{legs:{components:{"minecraft:custom_data":{NoFollow:1b}}}}}] unless entity @a[tag=OwnerUUID,limit=1,distance=..10] run tp @a[tag=OwnerUUID,limit=1]

