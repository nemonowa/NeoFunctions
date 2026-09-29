# 命名：knight
# 説明：レベルアップ時の処理
# >/function neofunction:system/scoreboard/lvl
# =/function neofunction:system/scoreboard/admin/knight


# 内容

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/200
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"白刃騎士【KNIGHT】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"パッシブ：「近接武器」の装備時に運動能力が向上し、攻撃力上昇とダメージ軽減を獲得。トリガーで攻撃力上昇を3分付与"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/201
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"魔剣錬成【クリエイト・ソード】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"無から剣を錬成するスキル（SP30消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/202
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"白刃一閃【スラッシュ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"神速の踏み込みから放たれる斬撃。武器破壊の可能性あり。反動で一時行動不能。（SP20消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/203
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"空脚【エアステップ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"斬撃の衝撃を利用して前方へ跳躍する間合い操作技。（SP10消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/204
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"剛刃草薙【スマッシャー】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"横薙ぎの衝撃波で周囲の敵を打ち上げる突破技。（SP30消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/205
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"反応回復【リアクティブ・ヒール】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"受けた痛みを糧に回復する前線維持スキル。（SP10消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/206
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"鋼刃結界【スチール・ドミニオン】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"周囲の味方に攻撃力上昇と耐性を付与。（SP30消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/207
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"不動【フォートレス】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"ノックバック無効を2分付与。再使用で時間リセット。（SP30消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/208
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"陽動偏向【デコイ】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"敵の注意を引き寄せ攻撃を引き受ける挑発技能。（SP10消費）"}]}}]

advancement grant @s[advancements={neoadvancement:neoskill/200=true}] only neoadvancement:neoskill/209
tellraw @s[advancements={neoadvancement:neoskill/200=true}] [{"text":"新スキル獲得:","color":"dark_aqua","bold":true},{"text":"天地断裂【グランドクロス】","color":"white","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"天地を断つ究極の一撃。周囲に壊滅的ダメージ。（SP100消費）"}]}}]