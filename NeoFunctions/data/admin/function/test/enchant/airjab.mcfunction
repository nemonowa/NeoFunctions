# 命名：airjab
# 説明：疾風（試作）の空中突きを使ったしるし。着地するまで空中突きをできなくする
# 実行条件：疾風の槍で空中突きをしたプレイヤー（エンチャントの run_function から）
# >/enchantment neofunction:test/gale
# =/function admin:test/enchant/airjab


# 内容
scoreboard objectives add neo.airjab dummy
scoreboard players set @s neo.airjab 1
