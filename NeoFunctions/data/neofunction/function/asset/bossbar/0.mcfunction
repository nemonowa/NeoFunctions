# 命名：0
# 説明：ボスバー初期化
# 説明：level.datのCustomBossEventsにデータが残っている場合は事前に削除しておくこと
# 説明：管理を一本化するため、bossbarに関する処理はすべてasset/bossbar配下で行う
# >手動
# =/function neofunction:asset/bossbar/0


# 内容
#bossbar add boss "boss"
#bossbar set boss style notched_10

## 世界目標表示用ボスバー
bossbar add world {"text":"世界目標表示用","color":"yellow","bold":true,"italic":false}
bossbar set world players @a[tag=!nobossbar]
bossbar set world value 100
bossbar set world visible false
