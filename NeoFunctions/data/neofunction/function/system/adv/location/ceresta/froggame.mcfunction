# 命名：froggame
# 説明：（説明未記載）
# >adv
# =/function neofunction:system/adv/location/ceresta/froggame

tag @s remove froggame
execute unless entity @a[tag=froggame] run function neofunction:asset/event/froggame/end
tellraw @s [{"translate":"%1$s 「……終了だ。エリアの外に出ちまったな。」\n%1$s「ルールは単純だ。外に出た時点で、今回の挑戦は失敗になる。」\n%1$s「気を落とすな。次は最後まで狩り切ってみせろ。」","with": [[{"text":"<"},{"text":"レオン・グレイ","obfuscated":false,"italic":false,"underlined":false,"strikethrough":false,"bold":true},{"text": ">"}]]}]
