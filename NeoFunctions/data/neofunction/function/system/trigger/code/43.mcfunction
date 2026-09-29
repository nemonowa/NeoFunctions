# 命名：43
# 説明：テンプレート：codeにも書き込まないと呼び出されないので注意
# >/function neofunction:system/trigger/code
# >/trigger code set 43
# =/function neofunction:system/trigger/code/43


# 内容：
advancement revoke @s only neoadvancement:anchor/root
advancement grant @s only neoadvancement:anchor/root
tellraw @s "告：調査次元に赴いたとき、対応するアンカー進捗が表示されるようになりました。"