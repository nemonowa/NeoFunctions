# 命名：chain
# 説明：雷鳴（試作）の連鎖。攻撃された相手から、6 ブロック以内の別の生き物 2 体へ雷を伝える
# 実行条件：雷鳴の弓で攻撃された相手（エンチャントの run_function から）
# >/enchantment neofunction:test/thunder
# =/function admin:test/enchant/chain


# 内容
tag @s add neo.chain_src
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.3 30
execute as @e[distance=..6,type=!player,tag=!neo.chain_src] if data entity @s HurtTime run tag @s add neo.chain_cand
execute as @e[tag=neo.chain_cand,sort=nearest,limit=2] run function admin:test/enchant/chain_hit
tag @e[tag=neo.chain_cand] remove neo.chain_cand
tag @s remove neo.chain_src
