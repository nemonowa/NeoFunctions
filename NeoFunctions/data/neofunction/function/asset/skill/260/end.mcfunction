# 命名：end
# 説明：【追加：2026-10-14 ルブラ編】スキル 260：光る表示を消す（最後に使ってから 10 秒後）
# >schedule（asset/skill/260/found）
# =/function neofunction:asset/skill/260/end

# 内容
kill @e[type=block_display,tag=skill260_glow]
