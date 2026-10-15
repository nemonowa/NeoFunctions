# 命名：choice_final
# 説明：終わりの選択を決める（choice.final＝star・void）。矢を放つ光の筋を見せ、空での演出（cine）へ
# 説明：すぐ地上へ戻さず、空で 11 秒の演出をしてから結末へ：void → B、star → C の条件を満たせば C（星の子を守る戦い）、満たさなければ A
# 実行条件：実行者 プレイヤー（選んだ人の位置で）。引数 c
# >/function neofunction:system/adv/tick/quest/40/choice
# =/function neofunction:system/adv/tick/quest/40/fin/choice_final

# 内容
execute unless score #temp main_story matches 446 run return 0
execute if data storage neofunction:rubra choice.final run return 0
$data modify storage neofunction:rubra choice.final set value "$(c)"
scoreboard players set #temp main_story 447
playsound minecraft:item.crossbow.shoot player @a[distance=..128] ~ ~ ~ 2 0.6
scoreboard players set #rf_n temp 0
execute anchored eyes positioned ^ ^ ^1 facing entity @e[type=ghast,tag=rubra_void,limit=1] eyes run function neofunction:system/adv/tick/quest/40/fin/beam
data modify storage neofunction:rubra fin.cine set value {t:0,e:"a"}
function neofunction:system/adv/tick/quest/40/fin/cond_c
execute if score #rf_c temp matches 1 run data modify storage neofunction:rubra fin.cine.e set value "c"
execute if data storage neofunction:rubra choice{final:"void"} run data modify storage neofunction:rubra fin.cine.e set value "b"
execute as @e[type=ghast,tag=rubra_void,limit=1] at @s run function neofunction:entity/skill/boss/rubra_void/cine_start
