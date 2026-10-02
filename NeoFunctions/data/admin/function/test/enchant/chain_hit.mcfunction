# 命名：chain_hit
# 説明：雷鳴（試作）の連鎖で雷を受けた相手。ダメージを与え、元の相手との間に火花の線を引く
# 実行条件：連鎖の対象（neo.chain_cand）
# >/function admin:test/enchant/chain
# =/function admin:test/enchant/chain_hit


# 内容
damage @s 4 minecraft:lightning_bolt
effect give @s minecraft:glowing 2 0 true
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.6 1.8
scoreboard objectives add neo.test dummy
scoreboard players set #line neo.test 0
execute at @s anchored eyes positioned ^ ^ ^ facing entity @e[tag=neo.chain_src,limit=1] eyes run function admin:test/enchant/chain_line
