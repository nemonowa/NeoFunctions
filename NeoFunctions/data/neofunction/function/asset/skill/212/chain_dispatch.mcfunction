# 命名：212/chain_dispatch
# 説明：chain.mcfunctionから@s=各キャスターの状態で呼ばれる。
# 説明：そのキャスター自身のChain212IDをストレージへ積んでchain_runへ引き継ぐ
# 説明：（execute as @a[...] は1体ずつ完了してから次に進むため、この一時ストレージ利用は
# 説明：　複数キャスターが同時にいても値がすり替わらず安全）
# >
# =/function neofunction:asset/skill/212/chain_dispatch

execute store result storage neofunction:chain212 id int 1 run scoreboard players get @s Chain212ID
function neofunction:asset/skill/212/chain_run with storage neofunction:chain212
