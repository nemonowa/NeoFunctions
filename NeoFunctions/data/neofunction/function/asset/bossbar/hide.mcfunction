# 命名：hide
# 説明：ボスバー表示OFFチェック
# 説明：ボス撃破・討伐失敗・近くにボスがいない等、表示を消したい全箇所からこの関数を呼び出すこと 対応するエンティティがいないボスバーを消す
# >各所から手動呼び出し
# >
# =/function neofunction:asset/bossbar/hide


data modify storage neofunction:bossbar For.Function set value "neofunction:asset/bossbar/for"
data modify storage neofunction:bossbar For.Min set value 0
data modify storage neofunction:bossbar Remove set value []
function neofunction:asset/nbt/for_in_range with storage neofunction:bossbar For
#tellraw @a {"nbt": "Remove","storage": "neofunction:bossbar"}
scoreboard players set #Calc temp 0
data modify storage neofunction:bossbar IDsCopy set from storage neofunction:bossbar IDs
execute if data storage neofunction:bossbar Remove[0] run data modify storage neofunction:bossbar IDs set value []
execute if data storage neofunction:bossbar Remove[0] run function neofunction:asset/bossbar/remove
