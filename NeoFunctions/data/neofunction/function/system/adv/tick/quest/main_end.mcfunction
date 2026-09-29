# 命名：
# 説明：クエスト個別タグ削除処理
# > 各メインクエスト会話が終了後順次呼び出し（参照元が多いので書ききれん）
# =/function neofunction:system/adv/tick/quest/main_end

#内容
scoreboard players set #progressing main_story 0
scoreboard players set #progressing temp 0