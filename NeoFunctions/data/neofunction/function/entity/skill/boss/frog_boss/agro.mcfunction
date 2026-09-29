# 命名：agro
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/agro

execute on target run return 0

damage @s 0.000001 player_attack by @p[distance=..32,gamemode=!creative,gamemode=!spectator]