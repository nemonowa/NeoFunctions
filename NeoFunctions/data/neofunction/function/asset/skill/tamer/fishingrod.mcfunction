# 命名：
# 説明：釣り竿のダメージ計算からマクロに引き渡し！
# >/function neofunction:system/adv/fishing_rod_hooked/.all 実行者as @s(advancement:neofunction:fishing_rod_hooked/.all) 実行位置@s(@s(advancement:neofunction:fishing_rod_hooked/.all)時点)
# =/function neofunction:asset/skill/tamer/fishingrod

# sharpnessレベルを取得（付いていなければ0のまま）
scoreboard players set #sharpLvl temp 0
execute store result score #sharpLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sharpness"

# プレイヤーの実効attack_damage(防具込みの最終値)参照はやめて、武器本体(釣り竿アイテム)が持つattack_damageのAttributeModifiers(Amount)のみを取得する
#   複数のattack_damageモディファイアを付与している武器の場合は、この1行だけでは合算できないので個別に足し込む処理を追加すること。
#   該当モディファイアが無い(=見つからない)場合はdata getが失敗し、#atkAttrHalfは0のままになる。
scoreboard players set #atkAttrHalf temp 0
# 【変更：2026-09-27 26.3対応】属性値のデータ(attribute_modifiers の要素)のキー名は 1.20.5 で Amount→amount に変わった
execute store result score #atkAttrHalf temp run data get entity @s SelectedItem.components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount 2

# ダメージ増加(Sharpness)ボーナス分：lvl>=1のとき (lvl+1)/2 相当
scoreboard players set #sharpDmgHalf temp 0
execute if score #sharpLvl temp matches 1.. run scoreboard players operation #sharpDmgHalf temp = #sharpLvl temp
execute if score #sharpLvl temp matches 1.. run scoreboard players add #sharpDmgHalf temp 1

# 使役士官の攻撃力Attribute1.5倍ボーナスは廃止。Sharpness・攻撃力Attributeとも常に等倍
scoreboard players set #two temp 2

scoreboard players operation #sharpQuarter temp = #sharpDmgHalf temp
scoreboard players operation #sharpQuarter temp *= #two temp

scoreboard players operation #attrQuarter temp = #atkAttrHalf temp
scoreboard players operation #attrQuarter temp *= #two temp

scoreboard players operation #dmgQuarter temp = #sharpQuarter temp
scoreboard players operation #dmgQuarter temp += #attrQuarter temp

execute store result storage neofunction:tamer temp.dmgSharp double 0.25 run scoreboard players get #sharpQuarter temp
execute store result storage neofunction:tamer temp.dmgAttr double 0.25 run scoreboard players get #attrQuarter temp
execute store result storage neofunction:tamer temp.dmg double 0.25 run scoreboard players get #dmgQuarter temp
# 巻き込み(splash)側は本体の60%ダメージにする：scale 0.25*0.6=0.15
execute store result storage neofunction:tamer temp.splashDmg double 0.15 run scoreboard players get #dmgQuarter temp

# smite(アンデット特効)：2.5*lvl
# 巻き込み側は60%：2.5*0.6=1.5*lvl
scoreboard players set #smiteLvl temp 0
execute store result score #smiteLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:smite"
execute store result storage neofunction:tamer temp.smiteDmg double 2.5 run scoreboard players get #smiteLvl temp
execute store result storage neofunction:tamer temp.splashSmiteDmg double 1.5 run scoreboard players get #smiteLvl temp

# bane_of_arthropods(虫特効)：2.5*lvl
# 巻き込み側は60%：2.5*0.6=1.5*lvl
scoreboard players set #baneLvl temp 0
execute store result score #baneLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:bane_of_arthropods"
execute store result storage neofunction:tamer temp.baneDmg double 2.5 run scoreboard players get #baneLvl temp
execute store result storage neofunction:tamer temp.splashBaneDmg double 1.5 run scoreboard players get #baneLvl temp

# impaling(水生特効)：2.5*lvl
# 巻き込み側は60%：2.5*0.6=1.5*lvl
scoreboard players set #impaleLvl temp 0
execute store result score #impaleLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:impaling"
execute store result storage neofunction:tamer temp.aquaDmg double 2.5 run scoreboard players get #impaleLvl temp
execute store result storage neofunction:tamer temp.splashAquaDmg double 1.5 run scoreboard players get #impaleLvl temp

# fire_aspect(火属性)：燃焼tick数 = lvl*80(=4秒*lvl、vanilla仕様通り)
scoreboard players set #fireLvl temp 0
execute store result score #fireLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fire_aspect"
execute store result storage neofunction:tamer temp.fireTicks short 80 run scoreboard players get #fireLvl temp

# sweeping_edge(範囲ダメージ増加)：巻き込み半径 = レベル+1。未所持(lvl0)でも基礎半径1は必ず持つ(単体扱いにしない)
scoreboard players set #sweepLvl temp 0
execute store result score #sweepLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sweeping"
#0にしたいなら多分ここいじればいいだけど思った以上に使いにくい武器だったよ。
#本当にやるかは実際使ってから判断して欲しい。
scoreboard players set #splashRadius temp 1
scoreboard players operation #splashRadius temp += #sweepLvl temp
execute store result storage neofunction:tamer temp.splashRadius int 1 run scoreboard players get #splashRadius temp

# knockback(ノックバック)：ノックバック強度(0.1刻み) = 6 + lvl*3（lvl0で0.6、以降1レベルごとに+0.3）
scoreboard players set #kbLvl temp 0
execute store result score #kbLvl temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:knockback"
scoreboard players set #kbPower temp 6
scoreboard players set #kbLvlMul temp 3
scoreboard players operation #kbLvlMul temp *= #kbLvl temp
scoreboard players operation #kbPower temp += #kbLvlMul temp
execute store result storage neofunction:tamer temp.kbPower int 1 run scoreboard players get #kbPower temp

# デバッグ表示：鞭ダメージ計算の内訳（鞭シリーズ共通処理なのでラベルは汎用化。使役士官の攻撃力補正は廃止済みなので出し分け不要）
# ダメージ増加エンチャ + 武器本体攻撃力 が式のまま見える形。2つを足せば合算値と一致する
tellraw @s[tag=argonaute] [{"text":"[鞭ダメージ計算] ","color":"aqua","bold":true},{"text":"ダメージ増加エンチャ","color":"gray"},{"nbt":"temp.dmgSharp","storage":"neofunction:tamer","color":"white"},{"text":" + 武器本体攻撃力","color":"gray"},{"nbt":"temp.dmgAttr","storage":"neofunction:tamer","color":"white"},{"text":" = 合算値","color":"gray"},{"nbt":"temp.dmg","storage":"neofunction:tamer","color":"gold","bold":true},{"text":" / アンデット特効: ","color":"gray"},{"nbt":"temp.smiteDmg","storage":"neofunction:tamer","color":"white"},{"text":" / 虫特効: ","color":"gray"},{"nbt":"temp.baneDmg","storage":"neofunction:tamer","color":"white"},{"text":" / 水生特効: ","color":"gray"},{"nbt":"temp.aquaDmg","storage":"neofunction:tamer","color":"white"},{"text":" / 炎上tick: ","color":"gray"},{"nbt":"temp.fireTicks","storage":"neofunction:tamer","color":"gold"},{"text":" / ノックバック: ","color":"gray"},{"nbt":"temp.kbPower","storage":"neofunction:tamer","color":"white"},{"text":" / 巻き込み半径: ","color":"gray"},{"nbt":"temp.splashRadius","storage":"neofunction:tamer","color":"white"}]

#一回のダメージコマンドでも、基礎ダメージ＋各属性ダメージが乗るようにする
# アンデット特効(smite)
execute store result score #Calc1 temp run data get storage neofunction:tamer temp.dmg 100
execute store result score #Calc2 temp run data get storage neofunction:tamer temp.smiteDmg 100
scoreboard players operation #Calc1 temp += #Calc2 temp
execute store result storage neofunction:tamer temp.smiteDmg double 0.01 run scoreboard players get #Calc1 temp

# 虫特効(bane_of_arthropods)
execute store result score #Calc1 temp run data get storage neofunction:tamer temp.dmg 100
execute store result score #Calc2 temp run data get storage neofunction:tamer temp.baneDmg 100
scoreboard players operation #Calc1 temp += #Calc2 temp
execute store result storage neofunction:tamer temp.baneDmg double 0.01 run scoreboard players get #Calc1 temp

# 水生特効(impaling)
execute store result score #Calc1 temp run data get storage neofunction:tamer temp.dmg 100
execute store result score #Calc2 temp run data get storage neofunction:tamer temp.aquaDmg 100
scoreboard players operation #Calc1 temp += #Calc2 temp
execute store result storage neofunction:tamer temp.aquaDmg double 0.01 run scoreboard players get #Calc1 temp

# アンデット特効(splash)
execute store result score #Calc1 temp run data get storage neofunction:tamer temp.splashDmg 100
execute store result score #Calc2 temp run data get storage neofunction:tamer temp.splashSmiteDmg 100
scoreboard players operation #Calc1 temp += #Calc2 temp
execute store result storage neofunction:tamer temp.splashSmiteDmg double 0.01 run scoreboard players get #Calc1 temp

# 虫特効(splash)
execute store result score #Calc1 temp run data get storage neofunction:tamer temp.splashDmg 100
execute store result score #Calc2 temp run data get storage neofunction:tamer temp.splashBaneDmg 100
scoreboard players operation #Calc1 temp += #Calc2 temp
execute store result storage neofunction:tamer temp.splashBaneDmg double 0.01 run scoreboard players get #Calc1 temp

# 水生特効(splash)
execute store result score #Calc1 temp run data get storage neofunction:tamer temp.splashDmg 100
execute store result score #Calc2 temp run data get storage neofunction:tamer temp.splashAquaDmg 100
scoreboard players operation #Calc1 temp += #Calc2 temp
execute store result storage neofunction:tamer temp.splashAquaDmg double 0.01 run scoreboard players get #Calc1 temp

# ノックバック計算用に、自分(攻撃者)の位置をマクロ側から辿れるよう一時タグを付ける
tag @s add kbAttacker

execute as @e[tag=hooked,limit=1,sort=nearest] at @s run function neofunction:asset/skill/tamer/fishingrodmacro with storage neofunction:tamer temp

tag @s remove kbAttacker