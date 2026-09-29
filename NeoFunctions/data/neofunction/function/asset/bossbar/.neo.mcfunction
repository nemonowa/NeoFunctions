# 命名：update
# 説明：エンティティ処理
# 説明：tag=bossが常時実行。bossbar自体の生成はasset/bossbar/showで済んでいるためここではボスバーの追加は行わない
# ボスバーがない場合、もう一度生成する
# >/function neofunction:entity/skill/boss/.neo
# =/function neofunction:asset/bossbar/.neo


#
data modify storage neofunction:bossbar ID set from entity @s UUID[0]
function neofunction:asset/bossbar/.macro with storage neofunction:bossbar
