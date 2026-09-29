# 命名：skill-special-loop-resume
# 説明：終影審判【エンド・オブ・シャドウ】のループ再開用の中継ファンクション。
# 説明：schedule functionは実行者(@s)の文脈を保持せずサーバー実行になってしまうため、
# 説明：「assasin-special」タグを頼りに本人を@sとして復元してから
# 説明：本体ループ(skill-special-loop)へ処理を渡す。
# >neofunction:player/job/assasin/skill-special-loop（末尾のschedule）
# =/function neofunction:player/job/assasin/skill-special-loop-resume

execute as @a[tag=assasin-special] at @s run function neofunction:player/job/assasin/skill-special-loop
