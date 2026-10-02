# 命名：init
# 説明：神器のエンチャントで使うスコアを用意する（system/setting/2_scoreboard にもあるが、それを通っていない既存のワールドのため、使うときにも作る）
# 説明：スコアは neo.nk_id・neo.nk_st の 2 つだけ（詳しくは system/setting/2_scoreboard のコメント）
# 実行条件：なし（何度呼んでもよい）
# >/function neofunction:asset/enchantment/tentsui/start
# >/function neofunction:asset/enchantment/shuuen/shot
# >/function neofunction:asset/enchantment/reiten/start
# >/function neofunction:asset/enchantment/choushinsei/charge
# =/function neofunction:asset/enchantment/core/init


# 内容
scoreboard objectives add neo.nk_id dummy
scoreboard objectives add neo.nk_st dummy
scoreboard players set #nk_20 temp 20
