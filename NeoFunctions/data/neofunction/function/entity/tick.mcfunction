# 命名：tick
# 説明：全エンティティ処理
# 説明：毎tick @e 重い！減らせ！！！
# 説明：この階層は本当に超大事だから最低限「.spawnの階層構造理解してから」確認して編集するようにして
# 説明：https://discord.com/channels/802086247291158538/820628772272209972/1431245580989894656
# >/function neofunction:tick
# =/function neofunction:entity/tick


# エンティティのスポーン時にチェック
execute as @e[tag=!check] run function neofunction:entity/.spawn/.neo

# （死亡画面表示中を含まない）スポーン後のプレイヤーを検知（HCでは死亡中は進捗が止まるため
execute as @e[scores={death=2..},type=player] run function neofunction:player/survival/respawn

# tagを持つエンティティを対象(常時実行するようなスキル)
execute as @e[tag=!vanilla,tag=check] run function neofunction:entity/skill/.neo

# 時間削除処理(PortalCooldown=1)
execute as @e[tag=portalcooldown,predicate=neofunction:portalcooldown] run tag @s add del

# 【変更：2026-09-28 26.3対応】1.21.2 から分裂した子スライムが親のタグ（check など）を引き継ぐため、1.20.4 のように「タグ無し＝vanilla＝削除」にならなくなった。スコアは引き継がないので、処理済み（check）なのに HPmax スコアが無いスライム＝分裂した子として削除する（ユーザーの判断）
execute as @e[type=#neofunction:slimes,tag=check,tag=!del] unless score @s HPmax matches ..2147483647 run tag @s add del
# 不要エンティティ削除(tag=del)
execute as @e[tag=del] run function neofunction:entity/skill/del

# エフェクト検知（超オモイ！極力実装しません。
# execute as @e[predicate=neofunction:conduit_power] run function neofunction:system/adv/effects_changed/conduit_power
