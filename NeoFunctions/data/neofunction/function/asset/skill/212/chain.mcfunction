# 命名：212/chain
# 説明：レゾナンス・チェイン 連鎖ループ処理（1tごとに実行される「入口」）
# 説明：★重要：scheduleで呼び出された関数は@s（発動者）のコンテキストを引き継がない。
# 説明：　　　そのままだと2発目以降の @s[scores={LVL=..}] などが全て不一致になり、
# 説明：　　　連鎖が止まってしまう（＝「1体以降機能しない」の原因）。
# 説明：　　　そのため、212.mcfunctionで付けておいたタグから発動者を再取得し、
# 説明：　　　@sを付け直した状態で本処理（chain_dispatch→chain_run）へ引き継ぐ。
# 説明：★マルチ対応：元は@a[tag=chain212_caster,limit=1]で1人しか処理できていなかった。
# 説明：　　limitを外し、複数人が同時に連鎖中でも全員分を1人ずつ順番に処理する
# 説明：　　（execute as @a[...] は対象ごとに逐次実行されるため、ストレージの一時使用も安全）
# >
# =/function neofunction:asset/skill/212/chain

execute as @a[tag=chain212_caster] at @s run function neofunction:asset/skill/212/chain_dispatch

# まだ連鎖中のキャスターが残っていれば、次のtickも継続してループする
execute if entity @a[tag=chain212_caster] run schedule function neofunction:asset/skill/212/chain 2t append
