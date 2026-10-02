# 命名：start
# 説明：流星（試作）の開始。段階を 1（上昇中）にし、10 tick 後に狙いを付ける
# 実行条件：流星の槍で突いたプレイヤー（段階なし）
# >/enchantment neofunction:test/meteor
# =/function admin:test/enchant/meteor/start


# 内容
scoreboard objectives add neo.leap dummy
scoreboard objectives add neo.leapt dummy
scoreboard players set @s neo.leap 1
scoreboard players set @s neo.leapt 10
particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 0 1
