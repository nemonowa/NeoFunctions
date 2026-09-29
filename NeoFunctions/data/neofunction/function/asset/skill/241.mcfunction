# 命名：魂の調合【ソウルブリューイング】
# 説明：ドクターが選択した種類（ダメージ/回復/起点）のポーションを1個生成しインベントリに追加する。（SP20消費）
# 説明：種類選択はスコアボード PotionType（0=ダメージ 1=回復 2=起点）を事前選択UIで切り替えておく想定。
# 説明：起点ポーションはそれ自体に効果を持たない触媒。対象に命中させると専用タグが付与され、
# 説明：後続スキルがそのタグを検知して追撃・強化ボーナスを発動する（weakenedと同系統のコンボ軸）。
# 説明：トリガーON時、追加SP+10消費で生成ポーションに一定確率で上位品質（quality:1b）が付与される。
# >
# =/function neofunction:asset/skill/241


# 内容：生成本体（種類別に分岐して実処理へ、アイテム付与＋所持数スコアボード加算）
#execute if score @s PotionType matches 0 run function neofunction:player/job/doctor/craft-damage
#execute if score @s PotionType matches 0 run scoreboard players add @s DrPotionDmg 1
#execute if score @s PotionType matches 1 run function neofunction:player/job/doctor/craft-heal
#execute if score @s PotionType matches 1 run scoreboard players add @s DrPotionHeal 1
#execute if score @s PotionType matches 2 run function neofunction:player/job/doctor/craft-base
#execute if score @s PotionType matches 2 run scoreboard players add @s DrPotionBase 1

execute at @s run function neofunction:player/job/doctor/craft-base
function neofunction:player/job/doctor/craft-heal
function neofunction:player/job/doctor/craft-damage

# 演出
particle minecraft:effect ~ ~1 ~ 0.3 0.3 0.3 0.02 20 force
playsound block.brewing_stand.brew record @s ~ ~ ~ 0.6 1.2 0


# 消費SP
scoreboard players remove @s SP 20
