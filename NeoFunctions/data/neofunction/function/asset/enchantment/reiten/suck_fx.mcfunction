# 命名：suck_fx
# 説明：吸引中の見た目。まわりから球へ集まっていく粒（ポータルの粒は、出た位置から指定の点へ集まる）と、黒い煙
# 実行条件：爆心として
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/suck_fx


# 内容
particle minecraft:portal ~ ~12 ~ 0 0 0 24 250 force
particle minecraft:reverse_portal ~ ~12 ~ 3 3 3 0 20 force
particle minecraft:squid_ink ~ ~12 ~ 2 2 2 0.02 10 force
particle minecraft:sculk_soul ~ ~12 ~ 3 3 3 0.02 5 force
