# 命名：9-1
# 説明：アクティブスキル
# 説明：鳥瞰【ホークアイ】鳥観
# 説明：五秒後に実行
# >
# =/function neofunction:asset/skill/9-1


# 内容
spectate @e[type=marker,sort=nearest,limit=1] @p[gamemode=spectator]
kill @e[type=marker]