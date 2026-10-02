# 命名：damage
# 説明：神器のダメージを与える。発動者（neo.nk_src タグ）がいれば、その人の爆発として与える（倒すと発動者が倒したことになる）
# 説明：発動者がログアウトしていて見つからないときは、攻撃者なしの爆発として与える
# 実行条件：ダメージを受ける相手として、引数 d にダメージ量（発動者に neo.nk_src タグ）
# >/function neofunction:asset/enchantment/core/wave_hit
# >/function neofunction:asset/enchantment/reiten/launch
# =/function neofunction:asset/enchantment/core/damage


# 内容
$execute if entity @a[tag=neo.nk_src] run return run damage @s $(d) minecraft:player_explosion by @a[tag=neo.nk_src,limit=1]
$damage @s $(d) minecraft:explosion
