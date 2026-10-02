# 命名：init
# 説明：神器のエンチャントで使うスコアを用意する（system/setting/2_scoreboard にもあるが、それを通っていない既存のワールドのため、使うときにも作る）
# 実行条件：なし（何度呼んでもよい）
# >/function neofunction:asset/enchantment/tentsui/start
# >/function neofunction:asset/enchantment/shuuen/shot
# >/function neofunction:asset/enchantment/reiten/start
# >/function neofunction:asset/enchantment/choushinsei/charge
# =/function neofunction:asset/enchantment/core/init


# 内容
scoreboard objectives add neo.nk_t dummy
scoreboard objectives add neo.nk_kind dummy
scoreboard objectives add neo.nk_id dummy
scoreboard objectives add neo.nk_r dummy
scoreboard objectives add neo.nk_busy dummy
scoreboard objectives add neo.nk_tmp dummy
scoreboard objectives add neo.nk_h dummy
scoreboard objectives add neo.nk_v dummy
scoreboard players set #20 neo.nk_tmp 20
