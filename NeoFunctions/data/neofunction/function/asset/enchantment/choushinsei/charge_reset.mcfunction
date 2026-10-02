# 命名：charge_reset
# 説明：しゃがむのをやめたので、ためを消す
# 実行条件：ためが残っていて、しゃがんでいないプレイヤー（エンチャントの tick から）
# >/enchantment neofunction:choushinsei
# =/function neofunction:asset/enchantment/choushinsei/charge_reset


# 内容
scoreboard players reset @s neo.nk_h
title @s actionbar {"text":"超新星 ……","color":"dark_gray"}
