# 命名：2-5s
# 説明：SP回復処理(特殊条件）
# 実行条件：地脈導きの杖をメインハンドに持つかつ、接地時
# >
# =/function neofunction:player/sp/regene/2-5s


# 内容
execute unless score @s SP = @s SPmax run scoreboard players add @s SP 2






