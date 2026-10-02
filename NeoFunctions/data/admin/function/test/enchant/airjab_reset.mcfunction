# 命名：airjab_reset
# 説明：疾風（試作）の空中突きのしるしを、着地したら消す
# 実行条件：疾風の槍を持ち、しるしがあり、地面にいるプレイヤー（エンチャントの tick から）
# >/enchantment neofunction:test/gale
# =/function admin:test/enchant/airjab_reset


# 内容
scoreboard players reset @s neo.airjab
