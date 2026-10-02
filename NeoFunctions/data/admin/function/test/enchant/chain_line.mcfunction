# 命名：chain_line
# 説明：雷鳴（試作）の火花の線。0.5 ブロックずつ元の相手へ進みながら火花を出す（最大 20 回）
# 実行条件：連鎖の対象の目の位置から、元の相手の方を向いて
# >/function admin:test/enchant/chain_hit
# =/function admin:test/enchant/chain_line


# 内容
particle minecraft:electric_spark ~ ~ ~ 0.05 0.05 0.05 0 2 force
scoreboard players add #line neo.test 1
execute if score #line neo.test matches ..20 unless entity @e[tag=neo.chain_src,distance=..0.6] positioned ^ ^ ^0.5 run function admin:test/enchant/chain_line
